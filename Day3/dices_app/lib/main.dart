import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dices App'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftup = 1;
  int leftdown = 2;
  int rightup = 3;
  int rightdown = 4;
  void dice(){
    setState(() {
      leftup = Random().nextInt(6)+1;
      leftdown = Random().nextInt(6)+1;
      rightup = Random().nextInt(6)+1;
      rightdown = Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 80.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    dice();
                  },
                  child: Image.asset('images/dice$leftup.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    dice();
                  },
                  child: Image.asset('images/dice$rightup.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    dice();
                  },
                  child: Image.asset('images/dice$leftdown.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    dice();
                  },
                  child: Image.asset('images/dice$rightdown.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Winner is Right Top",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white
            ),
          ),
        ],
      ),
    );
  }
}




