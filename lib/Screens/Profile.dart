import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Text(
        "Bhai profile wala page tu sambhal",
        style: TextStyle(color: Colors.amber, fontSize: 25),
      )),
    );
  }
}
