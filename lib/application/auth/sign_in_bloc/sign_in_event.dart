part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  const factory SignInEvent.usernameChanged(String usernameStr) =
      UsernameChanged;
  const factory SignInEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignInEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
}
