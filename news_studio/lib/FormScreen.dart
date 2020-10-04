import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Form(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Your Full Name',
                      labelStyle: TextStyle(color: Colors.orangeAccent),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular((25.0)),
                        borderSide: BorderSide(color: Colors.orangeAccent),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'John@gmail.com',
                        labelText: 'Email id',
                        labelStyle: TextStyle(color: Colors.orangeAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular((25.0)),
                          borderSide: BorderSide(),
                        )),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.orangeAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular((25.0)),
                          borderSide: BorderSide(),
                        )),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Gender',
                        hintText: 'Male/Female',
                        labelStyle: TextStyle(color: Colors.orangeAccent),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular((25.0)),
                          borderSide: BorderSide(),
                        )),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}