// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:greenage/onboarding/onbording.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        primaryColor: Colors.black,
      ),

      debugShowCheckedModeBanner: false,
      home: Onbording(),
      color: Colors.white,
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.push(
//             context, MaterialPageRoute(builder: (context) => Onbording())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(
//             "assets/images/banking11.png",
//             height: 100,
//             width: 100,
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           // SpinKitRipple(
//           //   color: Colors.greenAccent,
//           // ),
//           SpinKitFadingCircle(
//             color: Colors.green,
//           )
//         ],
//       ),
//     );
//   }
// }
