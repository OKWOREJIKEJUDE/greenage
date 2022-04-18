import 'package:flutter/material.dart';

class Languages extends StatelessWidget {
  const Languages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: EdgeInsets.only(top: 55, bottom: 30, right: 10, left: 10),
        child: Column(
          children: [
            Container(
              child: Text(
                "Languages",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Center(
                child: Text("English"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
