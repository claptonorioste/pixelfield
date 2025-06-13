part of 'sign_in_bloc.dart';

@freezed
sealed class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) bool obscureText,
    @Default(false) bool isLoading,
  }) = _SignInState;
}
