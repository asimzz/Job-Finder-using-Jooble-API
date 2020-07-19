import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:job_finder/application/auth/authentication_bloc/authentication_bloc.dart';
import 'package:job_finder/presentation/routes/router.gr.dart';

import '../../application/regular_job_search_bloc/regular_job_search_bloc.dart';
import '../../injection.dart';
import '../core/constants.dart';
import 'widgets/regular_job_search.dart';

class JobHomePage extends StatelessWidget {
  const JobHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              unauthenticated: (_) => ExtendedNavigator.of(context)
                  .pushReplacementNamed(Routes.signInPage),
              orElse: () {},
            );
          },
        ),
      ],
      child: Scaffold(
        backgroundColor: kSilver,
        appBar: AppBar(
          backgroundColor: kSilver,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 12.0,
              bottom: 12.0,
              right: 12.0,
            ),
            child: SvgPicture.asset(
              "assets/drawer.svg",
              color: kBlack,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(FontAwesomeIcons.signOutAlt),
              color: Color(0xff3A3A3A),
            ),
            SizedBox(width: 18.0)
          ],
        ),
        body: BlocProvider(
          create: (context) => getIt<RegularJobSearchBloc>(),
          child: RegularJobSearch(),
        ),
      ),
    );
  }
}
