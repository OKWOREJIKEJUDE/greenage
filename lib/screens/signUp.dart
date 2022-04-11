// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greenage/screens/bottomNavigation.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailTEC = TextEditingController();
  TextEditingController passwordTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: emailTEC,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Email"),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                controller: passwordTEC,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder(),
                    hintText: "Password"),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.no_cell),
                  border: OutlineInputBorder(),
                  hintText: "Phone Number",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Remember Me",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                // margin: EdgeInsets.all(10),
                width: double.infinity,
                child: FlatButton(
                  child: Text("Sign Up"),
                  onPressed: () {
                    {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BottomNav(),
                        ),
                      );
                    }
                  },
                  color: Colors.green,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or Sign Up With",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Color(0xffc4c4c4).withOpacity(0.7),
                      child: Image.asset("assets/images/google_pix.png"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffc4c4c4).withOpacity(0.7),
                      child: Image.asset("assets/images/facebook_pix2.png"),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffc4c4c4).withOpacity(0.7),
                      child: Image.asset("assets/images/linkedin_pix.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                    "By clicking on the Sign Up Button, you agree to our terms and conditions and "
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
