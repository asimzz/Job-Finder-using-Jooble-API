import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'package:job_finder/presentation/sign_up/widgets/sign_up_logo.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
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
            (_) => {},
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
                        'SIGN UP',
                        style: GoogleFonts.fredokaOne(
                            textStyle: TextStyle(
                          fontSize: 38,
                          color: Color(0xff3A3A3A),
                        )),
                      ),
                    ),
                    Center(child: SignUpLogo()),
                    const SizedBox(height: 50),

                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          FontAwesomeIcons.user,
                          color: Color(0xff3A3A3A),
                        ),
                        labelText: 'Username',
                      ),
                      style: GoogleFonts.tajawal(
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      autocorrect: false,
                      onChanged: (value) => context
                          .bloc<SignUpBloc>()
                          .add(SignUpEvent.usernameChanged(value)),
                      validator: (_) =>
                          context.bloc<SignUpBloc>().state.username.value.fold(
                                (l) => l.maybeMap(
                                    orElse: () => null,
                                    invalidUsername: (_) => 'Invalid Username'),
                                (_) => null,
                              ),
                    ),
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
                          .bloc<SignUpBloc>()
                          .add(SignUpEvent.emailChanged(value)),
                      validator: (_) => context
                          .bloc<SignUpBloc>()
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
                    const SizedBox(height: 12),
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
                          .bloc<SignUpBloc>()
                          .add(SignUpEvent.passwordChanged(value)),
                      validator: (_) =>
                          context.bloc<SignUpBloc>().state.password.value.fold(
                                (l) => l.maybeMap(
                                    orElse: () => null,
                                    invalidPassword: (_) => 'Invalid Password'),
                                (_) => null,
                              ),
                    ),

                    const SizedBox(height: 50),
                    Container(
                      height: 45,
                      padding: EdgeInsets.symmetric(horizontal: 55),
                      child: RaisedButton(
                        shape: StadiumBorder(),
                        onPressed: () {
                          context.bloc<SignUpBloc>().add(
                                const SignUpEvent
                                    .registerWithEmailAndPasswordPressed(),
                              );
                        },
                        color: Color(0xff3A3A3A),
                        child: Text('SIGN UP',
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
                    //     context.bloc<SignUpBloc>().add(
                    //           const SignUpEvent.signInWithEmailAndPasswordPressed(),
                    //         );
                    //   },
                    //   child: const Text('SIGN IN'),
                    // ),

                    //   Expanded(
                    //     child: FlatButton(
                    //       onPressed: () {
                    //         context.bloc<SignUpBloc>().add(
                    //               const SignUpEvent
                    //                   .registerWithEmailAndPasswordPressed(),
                    //             );
                    //       },
                    //       child: const Text('REGISTER'),
                    //     ),
                    //   ),
                    //

                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        print('fuck me');
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'Already have an Account? ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(color: Colors.black)),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign In Now',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    print('fuck me twice!!');
                                    ExtendedNavigator.of(context).pop();
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
