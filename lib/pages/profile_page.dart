import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Profile Page"),
        actions: <Widget>[
          IconButton( onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.pushReplacementNamed(context, '/signin');
            }, icon:Icon(Icons.exit_to_app))
        ],
       
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: <Widget>[
            Center(
                child:
                    Text("Welcome ${FirebaseAuth.instance.currentUser!.email}"))
          ],
        ),
      )),
    );
  }
}
