// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Sign Up for a new account if you dont have any",
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }
}
