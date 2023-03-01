import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: <Widget>[Center(child: Text("Welcome ${data['email']}"))],
        ),
      )),
    );
  }
}
