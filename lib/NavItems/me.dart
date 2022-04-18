// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greenage/screens/settings.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFc4c4c4).withOpacity(0.2),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 55, right: 10, left: 10, bottom: 70),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/pexx.png"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "De Programmer",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Card(
                    elevation: 1,
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: ListTile(
                          title: Text("Settings"),
                          leading: CircleAvatar(
                            backgroundColor: Colors.white,
                            // radius: 25,
                            backgroundImage:
                                AssetImage("assets/images/settings_icon.png"),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios, size: 15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text("Notifications"),
                        leading: CircleAvatar(
                          //radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/notification.png"),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text("Payment"),
                        leading: CircleAvatar(
                          //radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/payment.png"),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text("Privacy"),
                        leading: CircleAvatar(
                          //radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/privacy.png"),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Card(
                  elevation: 1,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text("LogOut"),
                        leading: CircleAvatar(
                          //radius: 30,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage("assets/images/logout.png"),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
