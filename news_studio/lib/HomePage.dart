import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_swiper/flutter_swiper.dart';
import 'details.dart';

class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
  }

  List data;

  Future<String> fetch() async {
    var jsondata = await http.get(
        "http://newsapi.org/v2/everything?q=tech&apiKey=ca8ac2d63c8e447d91b08beb42b7a2f5");

    var fetchdata = jsonDecode(jsondata.body);
    setState(() {
      data = fetchdata["articles"];
    });

    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Studio"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            title: data[index]["title"],
                            author: data[index]["author"],
                            description: data[index]["description"],
                            publishedAt: data[index]["publishedAt"],
                            urlToImage: data[index]["urlToImage"],
                          )));
            },
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                    child: Image.network(
                      data[index]["urlToImage"],
                      fit: BoxFit.cover,
                      height: 400.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 350.0, 0.0, 0.0),
                  child: Container(
                    height: 200.0,
                    width: 400.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(35.0),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                EdgeInsets.fromLTRB(20.0, 20.0, 10.0, 20.0),
                            child: Text(
                              data[index]["title"],
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "Tap for more information!",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: data == null ? 0 : data.length,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
