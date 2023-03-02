import 'package:flutter/material.dart';


class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: <Widget>[Center(child: Text("Welcome}"))],
        ),
      )),
    );
  }
}
