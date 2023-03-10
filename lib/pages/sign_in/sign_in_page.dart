import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_with_bloc/pages/sign_in/bloc/signin_bloc.dart';
import 'package:form_validation_with_bloc/pages/sign_in/bloc/signin_event.dart';
import 'package:form_validation_with_bloc/pages/sign_in/bloc/signin_state.dart';

class SignInPage extends StatelessWidget {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPass = TextEditingController();

  void doLogin(context) async {
    String? email = _controllerEmail.text;
    String? password = _controllerPass.text;

    if (password == "" || email == "") {
      print("fill all the field");
    } else {
      try {
        UserCredential userCredintials = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        if (userCredintials.user != null) {
          print("user is =>>> ${userCredintials.user}");
          Navigator.popUntil(context, (route) => route.isFirst);
          Navigator.pushReplacementNamed(context, '/profile');
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Signin page")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              BlocBuilder<SignInBloc, SignInState>(
                builder: (context, state) {
                  if (state is SignInErrorState) {
                    return Text(
                      state.errMsg.toString(),
                      style: TextStyle(color: Colors.red),
                    );
                  } else {
                    return Text("");
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _controllerEmail,
                onChanged: (val) {
                  BlocProvider.of<SignInBloc>(context).add(
                      OnChangeSignInValidEvent(
                          emailValue: _controllerEmail.text,
                          passwordValue: _controllerPass.text));
                },
                decoration: InputDecoration(hintText: "Enter email"),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                onChanged: (val) {
                  BlocProvider.of<SignInBloc>(context).add(
                      OnChangeSignInValidEvent(
                          emailValue: _controllerEmail.text,
                          passwordValue: _controllerPass.text));
                },
                controller: _controllerPass,
                decoration: InputDecoration(hintText: "Enter password"),
              ),
              const SizedBox(
                height: 10,
              ),
              BlocBuilder<SignInBloc, SignInState>(builder: (context, state) {
                // if (state is SignInLoadingState) {
                //   return Center(
                //     child: CircularProgressIndicator(),
                //   );
                // } else {
                return CupertinoButton(
                  color:
                      (state is SignInValidState) ? Colors.blue : Colors.grey,
                  child: Text("Signin"),
                  onPressed: () {
                    // BlocProvider.of<SignInBloc>(context).add(
                    //     SignInSubmittedEvent(
                    //         email: _controllerEmail.text,
                    //         password: _controllerPass.text));
                    // Navigator.of(context).pushReplacementNamed('/profile',
                    //     arguments: {"email": _controllerEmail.text});

                    doLogin(context);
                    
                  },
                );
              }
                  // },
                  ),
              SizedBox(
                height: 8,
              ),
              CupertinoButton(
                  child: Text("Create New Account"),
                  onPressed: () => Navigator.of(context).pushNamed("/signup"))
            ],
          ),
        ),
      ),
    );
  }
}
