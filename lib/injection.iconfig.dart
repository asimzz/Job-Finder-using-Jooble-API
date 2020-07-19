// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:job_finder/infastructure/core/job_repository_injection.dart';
import 'package:http/src/client.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:job_finder/infastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:job_finder/infastructure/auth/firebase_auth_facade.dart';
import 'package:job_finder/domain/auth/i_auth_facade.dart';
import 'package:job_finder/domain/core/network/network_info.dart';
import 'package:job_finder/application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'package:job_finder/application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:job_finder/application/auth/authentication_bloc/authentication_bloc.dart';
import 'package:job_finder/infastructure/repository/job_repository.dart';
import 'package:job_finder/domain/repository/i_job_reopsitory.dart';
import 'package:job_finder/application/regular_job_search_bloc/regular_job_search_bloc.dart';
import 'package:job_finder/application/advanced_job_search_bloc/advanced_job_search_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final jobSearchInjectableModule = _$JobSearchInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<Client>(() => jobSearchInjectableModule.httpClient);
  g.registerLazySingleton<DataConnectionChecker>(
      () => jobSearchInjectableModule.dataConnectionChecker);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSigIn);
  g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<Firestore>(),
      ));
  g.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(g<DataConnectionChecker>()));
  g.registerFactory<SignInBloc>(() => SignInBloc(g<IAuthFacade>()));
  g.registerFactory<SignUpBloc>(() => SignUpBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
  g.registerLazySingleton<IJobRepository>(
      () => JobRepository(g<Client>(), g<NetworkInfo>()));
  g.registerFactory<RegularJobSearchBloc>(
      () => RegularJobSearchBloc(g<IJobRepository>()));
  g.registerFactory<AdvancedJobSearchBloc>(
      () => AdvancedJobSearchBloc(g<IJobRepository>()));
}

class _$JobSearchInjectableModule extends JobSearchInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
