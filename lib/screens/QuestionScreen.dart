import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class QuestionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionScreenState();
  }
}

class QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: <Widget>[
          Container(child: _buildChild(context),)
        ],
      ),
    );
  }
}

Widget _buildChild(context) {
  if (MediaQuery.of(context).size.width < 350) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          Container(
            height: 240.0,
            alignment: Alignment.center,
            child: Text("data"),
            color: Colors.black,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      child: Text("1.data"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      child: Text("2.data"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      child: Text("3.data"),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                      child: Text("4.data"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  } else if (MediaQuery.of(context).size.width > 350 && MediaQuery.of(context).size.width < 400) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          Container(
            height: 300.0,
            alignment: Alignment.center,
            child: Text("data"),
            color: Colors.blue,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 150),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }else if (MediaQuery.of(context).size.width > 400) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          Container(
            height: 350.0,
            alignment: Alignment.center,
            child: Text("data"),
            color: Colors.blue,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 160),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 160),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 160),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 160),
                        child: Text("1.data"),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
