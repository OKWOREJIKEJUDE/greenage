// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc4c4c4).withOpacity(0.2),
      body: Padding(
        padding: EdgeInsets.only(top: 55, bottom: 30, right: 10, left: 10),
        child: Column(
          children: [
            Container(
              child: Text(
                "Manage Orders",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 45,
              width: double.infinity,
              padding: EdgeInsets.only(left: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 120,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("Piority")),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 120,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("New")),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 120,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("Active")),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 120,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.05),
                            spreadRadius: .5,
                            blurRadius: .5,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(child: Text("Later")),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
