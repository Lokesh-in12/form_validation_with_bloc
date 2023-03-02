import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final errProvider = StateProvider((ref) {
  bool? err;
  String? errMsg;
  return {err, errMsg};
});

class SignUpPage extends ConsumerWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emaileController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confPassController = TextEditingController();

  void CreateUser() async {
    String username = usernameController.text;
    String email = emaileController.text;
    String password = passController.text;
    String cPassword = confPassController.text;

    if (username == "" || email == "" || password == "" || cPassword == "") {
      print("Please fill out every fields");
    } else if (password != cPassword) {
      print("Passwords does not match");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        print("user created with credentials => $userCredential");
      } on FirebaseAuthException catch (e) {
        print("err is ${e.message}");
        ScaffoldMessenger(child: SnackBar(content: Text(e.code.toString())),);
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up Page")),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(children: <Widget>[
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(hintText: "Enter Username"),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              controller: emaileController,
              decoration: InputDecoration(hintText: "Enter email"),
            ),
            SizedBox(
              height: 7,
            ),
            TextField(
              controller: passController,
              decoration: InputDecoration(hintText: "Enter password"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: confPassController,
              decoration: InputDecoration(hintText: "Confirm Password"),
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoButton(
              child: Text("Sign Up"),
              onPressed: () {
                CreateUser();
              },
              color: Colors.cyan,
            )
          ]),
        ),
      )),
    );
  }
}
