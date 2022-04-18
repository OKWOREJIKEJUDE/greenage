// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greenage/datas.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  TextEditingController searchIthere = TextEditingController();
  static List<String> greenRelated = [
    "Organic Products",
    "Eco Consulting",
    "Green Products",
    "Event Planning",
    "Sustainable Events",
    "Vendor",
    "Green Services",
    "Franchise",
    "Consults",
    "Consultancy Services",
    "Finance",
    "Cathering",
    "Eco-Friendly",
    "Land Scapping",
    "Beauty Salon"
  ];
  static List greenImg = [
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
    'assets/images/green1.jpeg',
    'assets/images/gren7.jpg',
    'assets/images/gren5.jpg',
    'assets/images/green5.jpg',
    'assets/images/green4.jpeg',
  ];

  List<MyGreenDatas> greenDataLoad = List.generate(
      greenRelated.length,
      (index) => MyGreenDatas(
            name: '${greenRelated[index]}',
            imageURL: '${greenImg[index]}',
          ));
  // final List<MyFood> foodDataLoad = List.generate(
  //     foodData.length,
  //     (index) => MyFood(
  //           name: '${foodData[index]}',
  //           imageURL: '${foodData[index]}',
  //         ));

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
                onChanged: (value) {
                  setState(() {
                    greenRelated = greenRelated
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
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                  itemCount: greenDataLoad.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      child: Card(
                        elevation: 1,
                        child: Center(
                          child: ListTile(
                            title: Text(greenDataLoad[index].name),
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage(greenDataLoad[index].imageURL),
                            ),

                            //onTap: () {},
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
