// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:greenage/content_model.dart';
import 'package:greenage/screens/tabscreen.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final int _totalPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                _currentPage = page;
                setState(() {});
              },
              children: <Widget>[
                _buildPageContent(
                  isShowImageOnTop: false,

                  image2: "assets/images/pexx1.png",
                  body: 'Set your own goals and get better',
                  desc:
                      "Goal support your motivation and inspire you to work harder",
                  // color: Color.fromRGBO(130, 172, 38, 1),
                ),
                _buildPageContent(
                  isShowImageOnTop: false,

                  image2: "assets/images/pexx.png",
                  body: 'Track your progress with statistics ',
                  desc:
                      "Analyse personal result with detailed chart and numerical values",
                  // color: Color.fromRGBO(255, 141, 104, 1),
                ),
                _buildPageContent(
                  isShowImageOnTop: false,

                  image2: "assets/images/pexx2.png",
                  body: 'Create photo comparisons and share your results',
                  desc:
                      "Take before and after photos to visualize progress and get the shape that you dream about",
                  //color: Color.fromRGBO(195, 169, 255, 1),
                )
              ],
            ),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(top: 50, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (_currentPage != 2)
                      InkWell(
                        onTap: () {
                          _pageController.animateToPage(2,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.linear);
                          setState(() {});
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'Skip',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                      ),
                    if (_currentPage == 2)
                      InkWell(
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyTabScreen()))
                        },
                        child: Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'Start',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageContent(
      {required String body,
      required String desc,
      isShowImageOnTop,
      required String image2}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image2), fit: BoxFit.cover),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (!isShowImageOnTop)
            Column(
              children: [
                SizedBox(height: 170),
                Text(
                  body,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      height: 1.6,
                      fontWeight: FontWeight.w800,
                      color: Colors.white),
                ),
                Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      height: 1.6,
                      fontWeight: FontWeight.w800,
                      color: Colors.blueGrey),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(10),
                  width: double.infinity,
                  child: FlatButton(
                    child: Text(
                      _currentPage == contents.length - 1 ? "Continue" : "Next",
                    ),
                    onPressed: () {
                      if (_currentPage == contents.length - 1) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => MyTabScreen(),
                          ),
                        );
                      }
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 50),
                          curve: Curves.linear);
                      setState(() {});
                    },
                    //color: Theme.of(context).primaryColor,
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(children: [
                          for (int i = 0; i < _totalPages; i++)
                            i == _currentPage
                                ? _buildPageIndicator(true)
                                : _buildPageIndicator(false)
                        ]),
                      ),
                      //Spacer(),
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildPageIndicator(bool isCurrentPage) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 350),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: isCurrentPage ? 8.0 : 8.0,
      width: isCurrentPage ? 18.0 : 8.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.white : Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}


// Container(
//   height: 50,
//   margin: EdgeInsets.all(40),
//   width: double.infinity,
//   child: FlatButton(
//     child: Text(
//       currentIndex == contents.length - 1
//           ? "Continue"
//           : "Next",
//     ),
//     onPressed: () {
//       if (currentIndex == contents.length - 1) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (_) => Login(),
//           ),
//         );
//       }
//       _controller.nextPage(
//         duration: Duration(milliseconds: 100),
//         curve: Curves.bounceIn,
//       );
//     },
//     //color: Theme.of(context).primaryColor,
//     color: Colors.green,
//     textColor: Colors.white,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(20),
//     ),
//   ),
// )
