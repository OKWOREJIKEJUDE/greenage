// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greenage/screens/signIn.dart';
import 'package:greenage/screens/signUp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  var tabs;
  late TabController myController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController = TabController(length: 2, vsync: this);
    myController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   bottom: TabBar(
      //     tabs: [
      //       Tab(
      //         child: Text(
      //           "Sign In",
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.normal,
      //               color: Colors.black),
      //         ),
      //       ),
      //       Tab(
      //         child: Text(
      //           "Sign Up",
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.normal,
      //               color: Colors.black),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Center(
              child: Container(
                child: Text(
                  "Welcome Back",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: TabBar(
              controller: myController,
              tabs: [
                Tab(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          TabBarView(
            controller: myController,
            children: [
              SignInPage(),
              SignUpPage(),
            ],
          ),
        ],
      ),
    );
  }
}







// how to make tablayout outside app bar in flutter