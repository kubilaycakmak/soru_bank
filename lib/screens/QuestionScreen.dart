import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'package:soru_bank/question/Question.dart';

class QuestionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionScreenState();
  }
}

class QuestionScreenState extends State<QuestionScreen> {
  Question q1 = Question(
      AssetImage("questions/soru1.png"), "205", "224", "245", "327", "327");
  bool pressed =true;
  String _text = "Doğru";

  @override
  void initState() {
    super.initState();
  }
    
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var d1, d2, d3, d4 = Colors.teal;
    var media = MediaQuery.of(context).size;
    var pixelRatio = MediaQuery.of(context).devicePixelRatio;
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
              onPressed: () {
                print(MediaQuery.of(context).size.height);
              },
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
          Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              children: <Widget>[
                pixelRatio >= 3
                    ? Container(
                        height: media.height / 2,
                        alignment: Alignment.center,
                        child: Image(
                          image: q1.questionImage,
                        ),
                        color: Colors.white,
                      )
                    : Container(
                        height: media.height / 2.5,
                        alignment: Alignment.center,
                        child: Image(
                          image: q1.questionImage,
                        ),
                        color: Colors.white,
                      ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: media.height / 100),
                            child: RaisedButton(
                              color: pressed ? Colors.red : Colors.green,
                              padding: EdgeInsets.symmetric(
                                  vertical: media.height / 50,
                                  horizontal:
                                      MediaQuery.of(context).size.width / 2.6),
                              child: Text(q1.d1, style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                setState(() {
                                  if (q1.d1 == q1.answer) {
                                    print("true");
                                    pressed = !pressed;
                                  } else {
                                    print("wrong");
                                    pressed = pressed;
                                  }
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: media.height / 100),
                            child: RaisedButton(
                              color: pressed ? Colors.red : Colors.green,
                              padding: EdgeInsets.symmetric(
                                  vertical: media.height / 50,
                                  horizontal:
                                      MediaQuery.of(context).size.width / 2.6),
                              child: Text(q1.d2, style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                setState(() {
                                  if (q1.d2 == q1.answer) {
                                    print("true");
                                    pressed = !pressed;
                                  } else {
                                    pressed = pressed;
                                    print("wrong");
                                  }
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: media.height / 100),
                            child: RaisedButton(
                              color: pressed ? Colors.red : Colors.green,
                              padding: EdgeInsets.symmetric(
                                  vertical: media.height / 50,
                                  horizontal:
                                      MediaQuery.of(context).size.width / 2.6),
                              child: Text(q1.d3, style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                setState(() {
                                  if (q1.d2 == q1.answer) {
                                    print("true");
                                    pressed = !pressed;
                                  } else {
                                    print("wrong");
                                  }
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: media.height / 100),
                            child: RaisedButton(
                              color: pressed ? Colors.red : Colors.green,
                              padding: EdgeInsets.symmetric(
                                  vertical: media.height / 50,
                                  horizontal:
                                      MediaQuery.of(context).size.width / 2.6),
                              child: Text(q1.d4, style: TextStyle(color: Colors.white)),
                              onPressed: () {
                                setState(() {
                                  if (q1.d4 == q1.answer) {
                                    print("true");
                                    pressed = !pressed;
                                  } else {
                                    print("wrong");
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
