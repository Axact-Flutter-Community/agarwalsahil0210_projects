import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundnumber){
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }
  Expanded buildKey({Color color, int soundnumber}){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(soundnumber);
        },color: color,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red,soundnumber: 1),
              buildKey(color: Colors.orange,soundnumber: 2),
              buildKey(color: Colors.yellow,soundnumber: 3),
              buildKey(color: Colors.green,soundnumber: 4),
              buildKey(color: Colors.lightBlue,soundnumber: 5),
              buildKey(color: Colors.indigo,soundnumber: 6),
              buildKey(color: Colors.purpleAccent,soundnumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
