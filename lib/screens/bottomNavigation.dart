// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greenage/NavItems/category.dart';
import 'package:greenage/NavItems/home.dart';
import 'package:greenage/NavItems/inbox.dart';
import 'package:greenage/NavItems/me.dart';
import 'package:greenage/NavItems/order.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int mycurrent_index = 0;
  final tabs = [
    Home(),
    Inbox(),
    Category(),
    Order(),
    Me(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[mycurrent_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: mycurrent_index,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            title: Text("Inbox"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Categories"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            title: Text("Order"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Me"),
          )
        ],
        onTap: (index) {
          setState(() {
            mycurrent_index = index;
          });
        },
      ),
    );
  }
}
