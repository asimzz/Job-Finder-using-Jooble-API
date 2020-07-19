import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:job_finder/application/auth/authentication_bloc/authentication_bloc.dart';
import 'package:job_finder/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            authenticated: (_) => ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.index),
            unauthenticated: (_) => ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage),
          );
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ));
  }
}
