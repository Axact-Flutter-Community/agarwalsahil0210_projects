import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                height: 655.0,
                width: 100.0,
                color: Colors.red,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.green,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                    ),
                  ],
                ),
              ),

              Container(
                height: 655.0,
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
