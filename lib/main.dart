import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validation_with_bloc/pages/homepage.dart';
import 'package:form_validation_with_bloc/pages/profile_page.dart';
import 'package:form_validation_with_bloc/pages/sign_in/bloc/signin_bloc.dart';
import 'package:form_validation_with_bloc/pages/sign_in/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/signin': (context) => BlocProvider(
            create: (context) => SignInBloc(), child: SignInPage()),
        '/profile' : (context) => MyProfilePage()
      },
    );
  }
}
