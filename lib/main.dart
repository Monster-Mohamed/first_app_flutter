// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Facebook(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // app bar styles
          backgroundColor: Colors.red[300],
          centerTitle: true,
          // to show the shadow
          elevation: 10,
          // app bar widgets
          title: Text(
            "Facebook",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // the widget before title
          leading: IconButton(
            // the icon
            icon: Icon(Icons.menu),
            // when click on this icon
            onPressed: () {
              // clicked...
            },
          ),
          // in the very right place
          actions: <Widget>[
            // the container is like a div in html
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red[400],
          onPressed: () {
            //
          },
          child: IconButton(
            // the icon
            icon: Icon(Icons.add),
            // when click on this icon
            onPressed: () {
              // to show the toast message
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                // the content of this message
                content: Text("A new quote added successfully!"),
              ));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Text(
                  "Monster Quotes",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "HeaderFont",
                  ),
                ),
                // body
                Column(
                  // all quotes are here
                  children: [
                    // delete button
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red[600]),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(11)),
                          // border radius
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7))),
                        ),
                        child: Text("Delete All Quotes"),
                        onPressed: () {
                          // Run Codes
                        },
                      ),
                    ),

                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            "https://hotels.elgouna.com/wp-content/uploads/2021/06/PKG-display-website.jpg",
                            loadingBuilder: (context, child, progress) {
                              return progress == null
                                  ? child
                                  : Center(
                                      child: CircularProgressIndicator(),
                                    );
                            },
                          )),
                    ),

                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/imgs/1.jpg")),
                    ),

                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset("assets/imgs/2.jpg")),
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                // border color && border width
                                border: Border.all(color: Colors.red, width: 1),
                                // border radius
                                shape: BoxShape.circle,
                              ),
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/icons/face.svg",
                                  color: Colors.blue[600],
                                  width: 80,
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                // border color && border width
                                border: Border.all(color: Colors.red, width: 1),
                                // border radius
                                shape: BoxShape.circle,
                              ),
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/icons/face.svg",
                                  color: Colors.blue[600],
                                  width: 80,
                                ),
                              )),
                          Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                // border color && border width
                                border: Border.all(color: Colors.red, width: 1),
                                // border radius
                                shape: BoxShape.circle,
                              ),
                              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Center(
                                child: SvgPicture.asset(
                                  "assets/icons/face.svg",
                                  color: Colors.blue[600],
                                  width: 80,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "“Be yourself; everyone else is already taken.”",
                              style: TextStyle(
                                fontSize: 18,
                                // overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                letterSpacing: 1.3,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "“Be yourself; everyone else is already taken.”",
                              style: TextStyle(
                                fontSize: 18,
                                // overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                letterSpacing: 1.3,
                              ),
                              maxLines: 2,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 20, 0),
                            padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "“Be yourself; everyone else is already taken.”",
                              style: TextStyle(
                                fontSize: 18,
                                // overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                letterSpacing: 1.3,
                              ),
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // to make spaces without use margins
                    // SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.red[300],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "“You only live once, but if you do it right, once is enough.”",
                        style: TextStyle(
                          fontSize: 18,
                          // overflow: TextOverflow.ellipsis,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          letterSpacing: 1.3,
                        ),
                        maxLines: 2,
                      ),
                    ),

                    // ---------------------------
                    // ---------------------------
                    // Expanded Section
                    // Widget

                    Container(
                      height: 300,
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 80),
                      // for customizing the border
                      decoration: BoxDecoration(
                        color: Colors.red[400],
                        // border radius
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.indigo[300],
                              height: 100,
                            ),
                          ),
                          Expanded(
                            // that's mean this widget will take 3 chunks of the empty space
                            flex: 2,
                            child: Container(
                              color: Colors.blue[300],
                              height: 100,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.teal[300],
                              height: 100,
                            ),
                          )
                        ],
                      ),
                    )

                    // End Widget
                    // End Expanded Section
                    // ---------------------------
                    // ---------------------------
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
