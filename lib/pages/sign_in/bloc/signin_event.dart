abstract class SignInEvent {}

class OnChangeSignInValidEvent extends SignInEvent {
  String? emailValue;
  String? passwordValue;
  OnChangeSignInValidEvent({this.emailValue, this.passwordValue});
}

class SignInSubmittedEvent extends SignInEvent {
  String? email;
  String? password;
  SignInSubmittedEvent({this.email, this.password});
}
