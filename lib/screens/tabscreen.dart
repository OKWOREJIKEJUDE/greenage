// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greenage/screens/signIn.dart';
import 'package:greenage/screens/signUp.dart';

class MyTabScreen extends StatefulWidget {
  const MyTabScreen({Key? key}) : super(key: key);

  @override
  State<MyTabScreen> createState() => _MyTabScreenState();
}

class _MyTabScreenState extends State<MyTabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
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
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 45,
               
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(8)),
                    indicatorColor: Colors.lightGreen,
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
                Container(
                  height: 540,
                  child: TabBarView(children: [
                    SignInPage(),
                    SignUpPage(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
