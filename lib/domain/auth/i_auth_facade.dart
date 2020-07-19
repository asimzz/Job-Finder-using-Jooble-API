import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import '../../infastructure/auth/models/user_model.dart';
import 'auth_failure.dart';
import 'user.dart';
import 'value_objects.dart';

// FireBaseAuth , GoogleSignIn

abstract class IAuthFacade {
  Future<Option<User>> getSignInUser();
  Future<Either<AuthFailure, User>> registerWithEmailAndPassword({
    @required Username username,
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, User>> signInWithGoogle();

  Future<void> signOut();

  Future<void> getTheUserInfo();
}
