import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up Page")),
      body: SafeArea(
          child: Container(
        child: Column(children: <Widget>[
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter Username"),
          ),
          SizedBox(
            height: 7,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter email"),
          ),
          SizedBox(
            height: 7,
          ),
          TextField(
            decoration: InputDecoration(hintText: "Enter password"),
          ),
          SizedBox(
            height: 10,
          ),

          CupertinoButton(child: Text("Sign Up"), onPressed: (){},color: Colors.cyan,)


        ]),
      )),
    );
  }
}
