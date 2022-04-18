import 'package:flutter/material.dart';
import 'package:greenage/screens/languages.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
                  "Settings",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Languages()));
                },
                child: Card(
                  elevation: 1,
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: ListTile(
                        title: Text("Language"),
                        leading: CircleAvatar(
                          backgroundColor: Colors.white,
                          // radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/language.png"),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios, size: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
