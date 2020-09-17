import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('images/myPic.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                ),
                Text(
                  "Sahil",
                  style: TextStyle(fontSize: 20, color: Colors.white,fontFamily: 'Pacifico'),
                ),
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                ),
                Text(
                  "Developing Applications",
                  style: TextStyle(fontSize: 20, color: Colors.tealAccent, fontFamily: 'kufam'),
                ),
                SizedBox(
                  width: 20.0,
                  height: 20.0,
                ),
                Card(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+91 9905395344'),
                    ),
                  ]),
                ),
                Card(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.email),
                      title: Text('agarwalsahil255@gmail.com'),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
