// import 'dart:js';

import 'package:Memy/Screens/Home.dart';
import 'package:Memy/Screens/Profile.dart';
import 'package:Memy/Screens/add.dart';
import 'package:Memy/Screens/inbox.dart';
import 'package:Memy/Screens/search.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  static const double NavigationIconSize = 20.0;
  static const double CreateButtonWidth = 38.0;

  BottomBar();

  Widget get customCreateIcon => Container(
        child: FloatingActionButton(
          // onPressed: () {
          //   Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => Profile()),
          //       );
          // },
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.white,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: MenuButton(
                  'Home',
                  Icon(Icons.home,
                      color: Colors.white, size: NavigationIconSize)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
              },
              child: MenuButton(
                  'Search',
                  Icon(Icons.search,
                      color: Colors.white, size: NavigationIconSize)),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddNewPost()),
                  );
                },
                child: customCreateIcon),
            GestureDetector(
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Inbox()),
                );
                
              },
              child: MenuButton(
                  'Messages',
                  Icon(Icons.message,
                      color: Colors.white, size: NavigationIconSize)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile()),
                );
              },
              child: MenuButton(
                'Profile',
                Icon(Icons.person,
                    color: Colors.white, size: NavigationIconSize),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }

  Widget MenuButton(String text, Widget icon) {
    return GestureDetector(
        child: Column(
      children: <Widget>[
        icon,
        SizedBox(
          height: 7,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 11.0),
        )
      ],
    ));
  }
}

class Memy {
  static const IconData chat_bubble = const IconData(0xe808);
  static const IconData create = const IconData(0xe809);
  static const IconData heart = const IconData(0xe80a);
  static const IconData home = const IconData(0xe80b);
  static const IconData messages = const IconData(0xe80c);
  static const IconData profile = const IconData(0xe80d);
  static const IconData reply = const IconData(0xe80e);
  static const IconData search = const IconData(0xe80f);
}
