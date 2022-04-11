// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:greenage/screens/datailsPage.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 55, bottom: 5, right: 10, left: 10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 45,
                padding: EdgeInsets.only(top: 55),
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffc4c4c4).withOpacity(0.5),
                ),
                // child: TextField(
                //   controller: searchhere,
                //   keyboardType: TextInputType.none,
                //   decoration: InputDecoration(
                //       prefixIcon: Icon(
                //         Icons.search,
                //       ),
                //       border: OutlineInputBorder(),
                //       hintText: "Search"),
                // ),
              ),
            ),
            SizedBox(
              height: 40,
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
            //todo...////////////////////////first started here...///////////////////////////////////////....
            Container(
              height: 180,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                          child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6.0,
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5.0)
                                  ]),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/green2.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                  ),
                                  Positioned(
                                      top: 130.0,
                                      left: 10.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Videos &",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                  fontSize: 14.0)),
                                          SizedBox(height: 3.0),
                                          Text("Animations",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 16.0))
                                        ],
                                      ))
                                ],
                              )))),
                  InkWell(
                      onTap: () {},
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                          child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6.0,
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5.0)
                                  ]),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/green5.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                  ),
                                  Positioned(
                                      top: 130.0,
                                      left: 10.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Digital",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                  fontSize: 14.0)),
                                          SizedBox(height: 3.0),
                                          Text("Marketing",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 16.0))
                                        ],
                                      ))
                                ],
                              )))),
                  InkWell(
                      onTap: () {},
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                          child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6.0,
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5.0)
                                  ]),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/green2.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                  ),
                                  Positioned(
                                      top: 130.0,
                                      left: 10.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Programming and",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                  fontSize: 14.0)),
                                          SizedBox(height: 3.0),
                                          Text("Tech",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 16.0))
                                        ],
                                      ))
                                ],
                              )))),
                  InkWell(
                      onTap: () {},
                      child: Padding(
                          padding:
                              EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                          child: Container(
                              //height: 100,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 6.0,
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 5.0)
                                  ]),
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 120,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/green5.jpg"),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                  ),
                                  Positioned(
                                      top: 130.0,
                                      left: 10.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Editting and",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black,
                                                  fontSize: 14.0)),
                                          SizedBox(height: 3.0),
                                          Text("Photoshop",
                                              style: TextStyle(
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black,
                                                  fontSize: 16.0))
                                        ],
                                      ))
                                ],
                              )))),
                ],
              ),
            ),
            SizedBox(
              height: 50,
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
              color: Colors.white,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _myItemLists("assets/images/green1.jpeg", 'Vegetable',
                      "Apple", '\$35'),
                  _myItemLists(
                      "assets/images/green5.jpg", 'Rice', "Beans", '\$26'),
                  _myItemLists(
                      "assets/images/green2.jpg", 'Vegetable', "Akpu", '\$18'),
                  _myItemLists(
                      "assets/images/green4.jpeg", 'Beans', "Cassava", '\$28'),
                  _myItemLists(
                      "assets/images/green2.jpg", 'Green Tea', "Okra", '\$78'),
                  _myItemLists(
                      "assets/images/green5.jpg", 'egg', "Apple", '\$28'),
                  _myItemLists(
                      "assets/images/green2.jpg", 'Pap', "pineapple", '\$28'),

                  //     onTap: () {},
                  //     child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: 2.0, top: 2.0, bottom: 2.0),
                  //         child: Container(
                  //             width: 160,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       blurRadius: 6.0,
                  //                       color: Colors.grey.withOpacity(0.2),
                  //                       spreadRadius: 5.0)
                  //                 ]),
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: 140.0,
                  //                   decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               "assets/images/green2.jpg"),
                  //                           fit: BoxFit.cover),
                  //                       borderRadius: BorderRadius.only(
                  //                           topLeft: Radius.circular(10.0),
                  //                           topRight: Radius.circular(10.0))),
                  //                 ),
                  //                 Positioned(
                  //                     top: 140.0,
                  //                     left: 10.0,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: <Widget>[
                  //                         Container(
                  //                           child: Row(
                  //                             mainAxisAlignment:
                  //                                 MainAxisAlignment
                  //                                     .spaceBetween,
                  //                             children: [
                  //                               Text("4.5"),
                  //                               Icon(
                  //                                 Icons.favorite,
                  //                                 //color: Colors.green,
                  //                                 size: 20,
                  //                               ),
                  //                             ],
                  //                           ),
                  //                         ),
                  //                         SizedBox(
                  //                           height: 5,
                  //                         ),
                  //                         Text("Videos &",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                                 fontSize: 14.0)),
                  //                         SizedBox(height: 3.0),
                  //                         Text("Animations",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: Colors.black,
                  //                                 fontSize: 16.0)),
                  //                         SizedBox(
                  //                           height: 5,
                  //                         ),
                  //                         Text("Price"),
                  //                       ],
                  //                     ))
                  //               ],
                  //             )))),
                  // InkWell(
                  //     onTap: () {},
                  //     child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                  //         child: Container(
                  //             width: 160,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       blurRadius: 6.0,
                  //                       color: Colors.grey.withOpacity(0.2),
                  //                       spreadRadius: 5.0)
                  //                 ]),
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: 120.0,
                  //                   decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               "assets/images/green5.jpg"),
                  //                           fit: BoxFit.cover),
                  //                       borderRadius: BorderRadius.only(
                  //                           topLeft: Radius.circular(10.0),
                  //                           topRight: Radius.circular(10.0))),
                  //                 ),
                  //                 Positioned(
                  //                     top: 130.0,
                  //                     left: 10.0,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: <Widget>[
                  //                         Text("Digital",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                                 fontSize: 14.0)),
                  //                         SizedBox(height: 3.0),
                  //                         Text("Marketing",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: Colors.black,
                  //                                 fontSize: 16.0))
                  //                       ],
                  //                     ))
                  //               ],
                  //             )))),
                  // InkWell(
                  //     onTap: () {},
                  //     child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                  //         child: Container(
                  //             width: 160,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       blurRadius: 6.0,
                  //                       color: Colors.grey.withOpacity(0.2),
                  //                       spreadRadius: 5.0)
                  //                 ]),
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: 120.0,
                  //                   decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               "assets/images/green2.jpg"),
                  //                           fit: BoxFit.cover),
                  //                       borderRadius: BorderRadius.only(
                  //                           topLeft: Radius.circular(10.0),
                  //                           topRight: Radius.circular(10.0))),
                  //                 ),
                  //                 Positioned(
                  //                     top: 130.0,
                  //                     left: 10.0,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: <Widget>[
                  //                         Text("Programming and",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                                 fontSize: 14.0)),
                  //                         SizedBox(height: 3.0),
                  //                         Text("Tech",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: Colors.black,
                  //                                 fontSize: 16.0))
                  //                       ],
                  //                     ))
                  //               ],
                  //             )))),
                  // InkWell(
                  //     onTap: () {},
                  //     child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                  //         child: Container(
                  //             //height: 100,
                  //             width: 160,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       blurRadius: 6.0,
                  //                       color: Colors.grey.withOpacity(0.2),
                  //                       spreadRadius: 5.0)
                  //                 ]),
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: 120,
                  //                   decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               "assets/images/green2.jpg"),
                  //                           fit: BoxFit.cover),
                  //                       borderRadius: BorderRadius.only(
                  //                           topLeft: Radius.circular(10.0),
                  //                           topRight: Radius.circular(10.0))),
                  //                 ),
                  //                 Positioned(
                  //                     top: 130.0,
                  //                     left: 10.0,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: <Widget>[
                  //                         Text("Editting and",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                                 fontSize: 14.0)),
                  //                         SizedBox(height: 3.0),
                  //                         Text("Photoshop",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: Colors.black,
                  //                                 fontSize: 16.0))
                  //                       ],
                  //                     ))
                  //               ],
                  //             )))),
                  // InkWell(
                  //     onTap: () {},
                  //     child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                  //         child: Container(
                  //             width: 160,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       blurRadius: 6.0,
                  //                       color: Colors.grey.withOpacity(0.2),
                  //                       spreadRadius: 5.0)
                  //                 ]),
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: 120.0,
                  //                   decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               "assets/images/green2.jpg"),
                  //                           fit: BoxFit.cover),
                  //                       borderRadius: BorderRadius.only(
                  //                           topLeft: Radius.circular(10.0),
                  //                           topRight: Radius.circular(10.0))),
                  //                 ),
                  //                 Positioned(
                  //                     top: 130.0,
                  //                     left: 10.0,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: <Widget>[
                  //                         Text("Maths and",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                                 fontSize: 14.0)),
                  //                         SizedBox(height: 3.0),
                  //                         Text("Science",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: Colors.black,
                  //                                 fontSize: 16.0))
                  //                       ],
                  //                     ))
                  //               ],
                  //             )))),
                  // InkWell(
                  //     onTap: () {},
                  //     child: Padding(
                  //         padding:
                  //             EdgeInsets.only(left: 5.0, top: 2.0, bottom: 2.0),
                  //         child: Container(
                  //             width: 160,
                  //             decoration: BoxDecoration(
                  //                 color: Colors.white,
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 boxShadow: [
                  //                   BoxShadow(
                  //                       blurRadius: 6.0,
                  //                       color: Colors.grey.withOpacity(0.2),
                  //                       spreadRadius: 5.0)
                  //                 ]),
                  //             child: Stack(
                  //               children: <Widget>[
                  //                 Container(
                  //                   height: 120.0,
                  //                   decoration: BoxDecoration(
                  //                       image: DecorationImage(
                  //                           image: AssetImage(
                  //                               "assets/images/green2.jpg"),
                  //                           fit: BoxFit.cover),
                  //                       borderRadius: BorderRadius.only(
                  //                           topLeft: Radius.circular(10.0),
                  //                           topRight: Radius.circular(10.0))),
                  //                 ),
                  //                 Positioned(
                  //                     top: 130.0,
                  //                     left: 10.0,
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: <Widget>[
                  //                         Text("Learning is",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w600,
                  //                                 color: Colors.black,
                  //                                 fontSize: 14.0)),
                  //                         SizedBox(height: 3.0),
                  //                         Text("Awesome",
                  //                             style: TextStyle(
                  //                                 fontFamily: 'Montserrat',
                  //                                 fontWeight: FontWeight.w500,
                  //                                 color: Colors.black,
                  //                                 fontSize: 16.0))
                  //                       ],
                  //                     ))
                  //               ],
                  //             )))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _myItemLists(
      String imgPath, String firstText, String secondText, String price) {
    return InkWell(
        onTap: () {
          // Navigator.push(
          //     contexts, MaterialPageRoute(builder: (context) => DetailsPage()));
          Navigator.of(context).push((MaterialPageRoute(
              builder: (context) => DetailsPage(
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
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
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
