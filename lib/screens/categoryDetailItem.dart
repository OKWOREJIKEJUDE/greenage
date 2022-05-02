import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:greenage/model/datas.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final MyDatas myDatas;
  const CategoryDetailsScreen({Key? key, required this.myDatas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, right: 10, left: 10, bottom: 20),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(myDatas.imageURL), fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0))),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(myDatas.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, fontStyle: FontStyle.normal)),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(myDatas.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)),
            ),
          ]),
        ),
      ),
    );
  }
}
