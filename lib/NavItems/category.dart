// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greenage/model/datas.dart';
import 'package:greenage/screens/categoryDetailItem.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  static List<String> greenRelatedOnSearch = [];
  TextEditingController searchIthere = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc4c4c4).withOpacity(0.2),
      body: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 0, right: 10, left: 10),
        child: Column(
          children: [
            Text(
              "Categories",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.only(bottom: 3),
              height: 45,
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
              child: TextField(
                onChanged: (value) {},
                controller: searchIthere,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "search",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: listData.length,
                  itemBuilder: (context, index) {
                    MyDatas myDatas = listData[index];
                    return Container(
                      height: 80,
                      child: Card(
                        elevation: 1,
                        child: Center(
                          child: ListTile(
                              title: Text(myDatas.name),
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(myDatas.imageURL),
                              ),
                              trailing: Icon(Icons.arrow_forward_ios_rounded),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CategoryDetailsScreen(
                                                myDatas: myDatas)));
                              }),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
