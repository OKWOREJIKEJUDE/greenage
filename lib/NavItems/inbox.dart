// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Inbox extends StatefulWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  TextEditingController searchIthere = TextEditingController();
  static List<String> greenRelatedOnSearch = [];
  static List<String> greenRelated = [
    "finance",
    "cathering",
    "eco friendly",
    "land scapping",
    "beauty Salon",
    "organic products",
    "eco consulting",
    "green products",
    "event planning",
    "sustainable events",
    "vendor",
    "green services",
    "franchise",
    "consults",
    "consultancy services",
  ];
  static List greenImg = [
    'assets/images/green1.jpeg',
    'assets/images/gren7.jpg',
    'assets/images/gren5.jpg',
    'assets/images/green5.jpg',
    'assets/images/green4.jpeg',
    'assets/images/gren4.jpg',
    'assets/images/gren5.jpg',
    'assets/images/gren6.jpg',
    'assets/images/gren7.jpg',
    'assets/images/gren8.jpg',
    'assets/images/gren9.jpg',
    'assets/images/green2.jpg',
    'assets/images/green4.jpeg',
    'assets/images/green2.jpg',
    'assets/images/green5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc4c4c4).withOpacity(0.2),
      body: Padding(
        padding: EdgeInsets.only(top: 50, bottom: 0, right: 10, left: 10),
        child: Column(
          children: [
            Text(
              "Inbox",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                onChanged: (value) {
                  setState(() {
                    greenRelatedOnSearch = greenRelated
                        .where((element) => element.contains(value))
                        .toList();
                  });
                },
                controller: searchIthere,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "search",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: searchIthere.text.isNotEmpty
                      ? greenRelatedOnSearch.length
                      : greenRelated.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      child: Card(
                        elevation: 1,
                        child: Center(
                          child: ListTile(
                            title: Text(searchIthere.text.isNotEmpty
                                ? greenRelatedOnSearch[index]
                                : greenRelated[index]),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(greenImg[index]),
                            ),
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => InboxDataItems(greenRelated[index],)));
                            },
                          ),
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
