import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_with_bloc/pages/sign_in/bloc/signin_event.dart';
import 'package:form_validation_with_bloc/pages/sign_in/bloc/signin_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<OnChangeSignInValidEvent>((event, emit) {
      if (!EmailValidator.validate(event.emailValue!)) {
        emit(SignInErrorState(errMsg: "Enter a valid Email!"));
      } else if (event.passwordValue!.length < 5) {
        emit(SignInErrorState(errMsg: "Enter a valid Password!"));
      } else {
        emit(SignInValidState());
      }
    });

    on<SignInSubmittedEvent>((event, emit) {
      emit(SignInLoadingState());
    });
  }
}
