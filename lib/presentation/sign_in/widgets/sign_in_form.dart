import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/application/auth/authentication_bloc/authentication_bloc.dart';
import 'package:job_finder/application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'package:job_finder/presentation/core/constants.dart';
import 'package:job_finder/presentation/routes/router.gr.dart';
import 'package:job_finder/presentation/sign_in/widgets/sign_in_logo.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                  message: failure.map(
                cancelledByUser: (_) => 'Cancelled',
                serverError: (_) => 'Server Error',
                emailAlreadyInUse: (_) => 'Email already in use',
                invalidEmailAndPasswordCombination: (_) =>
                    'Inavlid emial and password combination',
              )).show(context);
            },
            (user) {
              print(user);
              ExtendedNavigator.of(context).pushReplacementNamed(Routes.index,
                  arguments: IndexArguments(
                    user: user,
                  ));
              context
                  .bloc<AuthBloc>()
                  .add(const AuthEvent.authCheckRequseted());
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidate: state.showErrorMessages,
            child: Stack(
              children: [
                ListView(
                  padding: const EdgeInsets.all(8),
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 70, bottom: 40),
                      child: Text(
                        'SIGN IN',
                        style: GoogleFonts.fredokaOne(
                            textStyle: TextStyle(
                          fontSize: 38,
                          color: Color(0xff3A3A3A),
                        )),
                      ),
                    ),
                    Center(child: SignInLogo()),
                    const SizedBox(height: 18),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xff3A3A3A),
                        ),
                        labelText: 'Email',
                      ),
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignInBloc>()
                          .add(SignInEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<SignInBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                                orElse: () => null,
                                invalidEmail: (_) => 'Invalid Email'),
                            (_) => null,
                          ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.lock,
                          color: Color(0xff3A3A3A),
                        ),
                        labelText: 'Password',
                      ),
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) => context
                          .bloc<SignInBloc>()
                          .add(SignInEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.bloc<SignInBloc>().state.password.value.fold(
                                (l) => l.maybeMap(
                                    orElse: () => null,
                                    invalidPassword: (_) => 'Invalid Password'),
                                (_) => null,
                              ),
                    ),

                    const SizedBox(height: 12),
                    Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: RaisedButton(
                        shape: StadiumBorder(),
                        onPressed: () {
                          context.bloc<SignInBloc>().add(
                                const SignInEvent
                                    .signInWithEmailAndPasswordPressed(),
                              );
                        },
                        color: Color(0xff3A3A3A),
                        child: Text('SIGN IN',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ),
                    ),
                    // FlatButton(
                    //   onPressed: () {
                    //     context.bloc<SignInBloc>().add(
                    //           const SignInEvent.signInWithEmailAndPasswordPressed(),
                    //         );
                    //   },
                    //   child: const Text('SIGN IN'),
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13.0),
                      child: Text(
                        'OR',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ),
                    //   Expanded(
                    //     child: FlatButton(
                    //       onPressed: () {
                    //         context.bloc<SignInBloc>().add(
                    //               const SignInEvent
                    //                   .registerWithEmailAndPasswordPressed(),
                    //             );
                    //       },
                    //       child: const Text('REGISTER'),
                    //     ),
                    //   ),
                    //

                    Container(
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: RaisedButton(
                        shape: StadiumBorder(),
                        onPressed: () {
                          context.bloc<SignInBloc>().add(
                                const SignInEvent.signInWithGooglePressed(),
                              );
                        },
                        color: kOrange,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                            Text('Sign In with Google',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () {
                        print('fuck me');
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'New to  Jo',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.black)),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'O',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFF87633))),
                            TextSpan(
                              text: 'ble ? ',
                            ),
                            TextSpan(
                                text: 'Sign Up Now',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    ExtendedNavigator.of(context)
                                        .pushNamed(Routes.signUpPage);
                                  },
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFFF87633))),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                if (state.isSubmitting) ...[
                  Container(
                    color: Colors.white.withOpacity(0.3),
                    child: Center(
                      child: SpinKitCircle(
                        color: Color(0xff3A3A3A),
                        size: 100,
                      ),
                    ),
                  ),
                ]
              ],
            ));
      },
    );
  }
}
