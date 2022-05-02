// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greenage/screens/firstDetailsPage.dart';
import 'package:greenage/screens/secondDatailsPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController searchhere = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFc4c4c4).withOpacity(0.2),
      body: Padding(
        padding: const EdgeInsets.only(top: 55, bottom: 5, right: 10, left: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                  // readOnly: readOnly,
                  controller: searchhere,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      //suffixIcon: suffix,
                      border: InputBorder.none,
                      hintText: "search",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Most Popular Categories",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "View All",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                height: 180,
                //color: Color(0xFFc4c4c4).withOpacity(0.5),

                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _myFirstItemLists("assets/images/green1.jpeg",
                        'Sustainable Event Planning', '3.0'),
                    _myFirstItemLists(
                        "assets/images/green5.jpg", 'Organic Products', '2.4'),
                    _myFirstItemLists(
                        "assets/images/green2.jpg", 'Eco Consulting', '5.0'),
                    _myFirstItemLists("assets/images/green4.jpeg",
                        'Farmers Vendor Sysytem', '6.0'),
                    _myFirstItemLists(
                        "assets/images/green2.jpg", 'Green Services', '2.9'),
                    _myFirstItemLists(
                        "assets/images/green5.jpg", 'Green Franchises', '3.5'),
                    _myFirstItemLists(
                        "assets/images/green1.jpeg", 'Green-Consult', '2.8'),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Featured Gigs",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //todo...////////////////////////second started here...///////////////////////////////////////....
              SizedBox(
                height: 20,
              ),
              Container(
                height: 230,
                // color: Color(0xFFc4c4c4).withOpacity(0.5),
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _myItemLists(
                        "assets/images/gren4.jpg", 'Green', "Finance", '\$35'),
                    _myItemLists("assets/images/gren5.jpg", 'Eco-Friendly',
                        "retails", '\$26'),
                    _myItemLists("assets/images/gren6.jpg", 'Sustainable',
                        "Materials", '\$18'),
                    _myItemLists("assets/images/gren7.jpg", 'Organic',
                        "Cathering", '\$28'),
                    _myItemLists("assets/images/gren8.jpg", 'Eco-Friendly',
                        "Beauty Salon", '\$78'),
                    _myItemLists("assets/images/gren9.jpg", 'Eco-Friendly',
                        "Landscapping", '\$28'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _myFirstItemLists(
      String imgImagePath, String firstItemText, String rating) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
              builder: (context) => FirstDetailsPage(
                    smallheroTag: imgImagePath,
                    smallfirstText: firstItemText,
                  ))));
        },
        child: Padding(
            padding: EdgeInsets.only(left: 8.0, top: 2.0, bottom: 2.0),
            child: Container(
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Color(0xFFc4c4c4).withOpacity(
                              0.1), ///////////////////////////////////////////////////
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 110.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgImagePath),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0))),
                    ),
                    Positioned(
                        top: 110.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Text(rating),
                            SizedBox(
                              height: 5,
                            ),
                            Text(firstItemText,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ))
                  ],
                ))));
  }

  Widget _myItemLists(
      String imgPath, String firstText, String secondText, String price) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
              builder: (context) => SecondDetailsPage(
                  heroTag: imgPath,
                  firstText: firstText,
                  secondText: secondText,
                  foodPrice: price))));
        },
        child: Padding(
            padding: EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
            child: Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(imgPath), fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0))),
                    ),
                    Positioned(
                        top: 130.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("4.5"),
                                  Icon(
                                    Icons.favorite,
                                    //color: Colors.green,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(firstText,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Text(secondText,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16.0)),
                            SizedBox(
                              height: 5,
                            ),
                            Text(price),
                          ],
                        ))
                  ],
                ))));
  }
}
