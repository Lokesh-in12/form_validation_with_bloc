abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInValidState extends SignInState {}

class SignInErrorState extends SignInState {
  final String? errMsg;
  SignInErrorState({this.errMsg});
}

class SignInLoadingState extends SignInState {}
