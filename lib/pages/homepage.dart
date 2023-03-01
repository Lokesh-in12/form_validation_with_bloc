import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to signlyy"),
      ),
      body: Center(
        child: CupertinoButton(
            color: Colors.cyan,
            child: Text("Sign in with email"),
            onPressed: () => Navigator.of(context).pushNamed('/signin')),
      ),
    );
  }
}
