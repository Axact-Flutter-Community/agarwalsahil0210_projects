import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepOrange[300],
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
  int Player1 = 1;
  int Player3 = 2;
  int Player2 = 3;
  int Player4 = 4;
  String winner = "";

  void dice() {
    setState(() {
      Player1 = Random().nextInt(6) + 1;
      Player3 = Random().nextInt(6) + 1;
      Player2 = Random().nextInt(6) + 1;
      Player4 = Random().nextInt(6) + 1;
      if ( Player1> Player3) {
        if (Player1 > Player2) {
          if (Player1 > Player4)
            winner = "Player 1";
          else
            winner = "Player 4";
        } else if (Player2 > Player4) winner = "Player 2";
        else winner = "Player 4";
      }
      else{
        if(Player3>Player2){
          if(Player3>Player4) winner="Player 3";
          else winner = "Player 4";
        }
        else if(Player2>Player4) winner = "Player 2";
        else winner = "Player 4";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            child: Container(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),child: Text("Player 1                     Player 2", style: TextStyle(fontSize: 20),)),
            height: 60.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dice();
                  },
                  child: Image.asset('images/dice$Player1.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dice();
                  },
                  child: Image.asset('images/dice$Player2.png'),
                ),
              )
            ],
          ),
          SizedBox(
            child: Container(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),child: Text("Player 3                     Player 4", style: TextStyle(fontSize: 20),)),
            height: 60.0,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dice();
                  },
                  child: Image.asset('images/dice$Player3.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    dice();
                  },
                  child: Image.asset('images/dice$Player4.png'),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Winner is $winner !',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
