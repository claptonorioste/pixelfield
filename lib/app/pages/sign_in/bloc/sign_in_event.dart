part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;
  const factory SignInEvent.obscureText() = _ObscureText;
  const factory SignInEvent.signIn(String email, String password) = _SignIn;
}
