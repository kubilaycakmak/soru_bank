import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return QuestionScreenState();
  }
}

class QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
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
                onPressed: () {

                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){
                  
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
              padding: EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 150),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 150),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 150),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 25, horizontal: 150),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
