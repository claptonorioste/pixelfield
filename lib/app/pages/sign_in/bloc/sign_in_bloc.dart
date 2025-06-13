import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInState()) {
    on<SignInEvent>((event, emit) {
      if (event is _ObscureText) {
        emit(state.copyWith(obscureText: !state.obscureText));
      }
      if (event is _SignIn) {
        emit(state.copyWith(isLoading: true));
      }
    });
  }
}
