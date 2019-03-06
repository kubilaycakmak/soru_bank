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

        // floatingActionButton: FloatingActionButton.extended(
        //   icon: Icon(Icons.close),
        //   label: Text("Kapat"),
        //   onPressed: (){

        //   },
        //   shape: BeveledRectangleBorder(
        //     borderRadius: BorderRadius.circular(8.0)
        //   ),
        // ),
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
            media.width > 350 ? ContainerMore350 : ContainerLess350
          ],
        ));
  }
}

final ContainerLess350 = new Container(
  height: 200.0,
  alignment: Alignment.center,
  child: Text("data"),
  color: Colors.black,
);
final ContainerMore350 = new Container(
  height: 300.0,
  alignment: Alignment.center,
  child: Text("data"),
  color: Colors.blue,
  );
