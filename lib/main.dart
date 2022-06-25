// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Facebook(),
    );
  }
}

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        centerTitle: true,
        title: Text(
          "Facebook",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          // the icon
          icon: Icon(Icons.menu),
          // when click on this icon
          onPressed: () {
            // to show the toast message
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              // the content of this message
              content: Text("Menu bar is opened"),
            ));
          },
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Icon(
              Icons.search,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
            child: Icon(
              Icons.chat,
            ),
          )
        ],
      ),
    );
  }
}
