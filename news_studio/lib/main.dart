import 'dart:convert';

import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'FormScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "News Studio",
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: MyBottomNavigationBar());
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _currentIndex = 0;
  final List<Widget> _children =[
    HomePage(),
    FormScreen(),
  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orangeAccent,
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items:
          [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text("Home")
            ),
            BottomNavigationBarItem(
                icon: new Icon(Icons.contact_mail),
                title: new Text("Profile")
            ),
          ]
      ),
    );
  }
}

