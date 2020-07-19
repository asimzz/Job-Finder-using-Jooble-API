import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import './firebase_user_mapper.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import 'models/user_model.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Firestore _firestore;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  @override
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    Username username,
    EmailAddress emailAddress,
    Password password,
  }) async {
    final usernameStr = username.getOrCrash();
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final firebaseUser = await _firebaseAuth.currentUser();
      _firestore.collection('Users').document(firebaseUser.uid).setData(
        {
          "id": firebaseUser.uid,
          "username": usernameStr,
          "email": emailAddressStr,
        },
        merge: true,
      );
      DocumentSnapshot userData =
          await _firestore.collection("Users").document(firebaseUser.uid).get();
      UserModel user = UserModel.fromJson(userData.data);

      return right(user.toDomain());
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      final firebaseUser = await _firebaseAuth.currentUser();
      DocumentSnapshot userData =
          await _firestore.collection("Users").document(firebaseUser.uid).get();
      UserModel user = UserModel.fromJson(userData.data);

      return right(user.toDomain());
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, User>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );
      await _firebaseAuth.signInWithCredential(authCredential);

      _firestore.collection('Users').document(googleUser.id).setData(
        {
          "id": googleUser.id,
          "username": googleUser.displayName,
          "email": googleUser.email,
        },
        merge: true,
      );

      DocumentSnapshot userData =
          await _firestore.collection("Users").document(googleUser.id).get();
      UserModel user = UserModel.fromJson(userData.data);

      return right(user.toDomain());
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getSignInUser() => _firebaseAuth
      .currentUser()
      .then((firebaseUser) => optionOf(firebaseUser?.toDomain()));

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<void> getTheUserInfo() async {
    final firebaseUser = await _firebaseAuth.currentUser();
    _firestore
        .collection("users")
        .document(firebaseUser.uid)
        .get()
        .then((value) {
      print(value.data);
    });
  }
}
