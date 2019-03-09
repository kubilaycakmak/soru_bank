import 'package:flutter/material.dart';
import 'package:soru_bank/CardItemModel.dart';
import 'screens/QuestionScreen.dart';
import 'package:flutter/services.dart';

void main() => runApp(SoruBank());

class SoruBank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //will false when we finish debug
        title: 'Bi Soru',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
        routes: <String, WidgetBuilder>{
          "/question": (BuildContext context) => QuestionScreen()
        });
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var nowDate = DateTime.now();

  var appColors = [
    Color.fromRGBO(231, 129, 109, 1.0),
    Color.fromRGBO(99, 138, 223, 1.0),
    Color.fromRGBO(111, 194, 173, 1.0)
  ];
  var cardIndex = 0;
  ScrollController scrollController;
  var currentColor = Color.fromRGBO(0, 139, 139, 1.0);

  var cardsList = [
    new CardItemModel("Matematik", Icons.multiline_chart, 3, 0.0),
    new CardItemModel("Geometri", Icons.gps_not_fixed, 3, 5.0),
    new CardItemModel("Matematik 2", Icons.gps_not_fixed, 3, 60.0)
  ];

  AnimationController animationController;
  ColorTween colorTween;
  CurvedAnimation curvedAnimation;

  void initState() {
    super.initState();
    scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    var media = MediaQuery.of(context).size;
    var pixelRatio = MediaQuery.of(context).devicePixelRatio;
    return Scaffold(
      backgroundColor: currentColor,
      appBar: AppBar(
        title: Text(
          "Soru Bank",
          style: TextStyle(fontSize: 20.0),
        ),
        backgroundColor: currentColor,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                print(nowDate);
                print(MediaQuery.of(context).size.height);
                print(MediaQuery.of(context).size.width);
                print(MediaQuery.of(context).devicePixelRatio);
              },
            ), //will IconButton to clickable
          ),
        ],
        elevation: 0.0, //changing on shadow
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 2.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    pixelRatio >= 3
                        ? Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Icon(
                              Icons.account_circle,
                              size: 65.0,
                              color: Colors.white,
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.symmetric(vertical: 5.0),
                            child: Icon(
                              Icons.account_circle,
                              size: 55.0,
                              color: Colors.white,
                            ),
                          ),
                    pixelRatio >= 3
                        ? Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 0),
                            child: Text(
                              "Merhaba, Kullanıcı.",
                              style: TextStyle(
                                  fontSize: pixelRatio * 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 0),
                            child: Text(
                              "Merhaba, Kullanıcı.",
                              style: TextStyle(
                                  fontSize: pixelRatio * 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                    pixelRatio >= 3
                        ? Text(
                            "Haydi, Göster kendini.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: pixelRatio * 7,
                                fontWeight: FontWeight.w200),
                          )
                        : Text(
                            "Haydi, Göster kendini.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: pixelRatio * 10,
                                fontWeight: FontWeight.w200),
                          ),
                          pixelRatio >= 3
                        ? Text(
                            "Senin için sorular hazırladık, Hazır olduğuna emin olduğunda başla!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: pixelRatio * 7,
                                fontWeight: FontWeight.w200),
                          )
                        : Text(
                            "Senin için sorular hazırladık, Hazır olduğuna emin olduğunda başla!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: pixelRatio * 10,
                                fontWeight: FontWeight.w200),
                          ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 45.0, vertical: 5.0),
                  child: Text(
                    "BUGÜN: " +
                        nowDate.day.toString() +
                        "/" +
                        nowDate.weekday.toString() +
                        "/" +
                        nowDate.year.toString(), //get today date
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
                Container(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 3,
                      controller: scrollController,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, position) {
                        return GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Card(
                              elevation: 2.0,
                              child: Container(
                                width: media.width - 90,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.all(30.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Icon(
                                            cardsList[position].icon,
                                            color: appColors[position],
                                          ),
                                          Icon(
                                            Icons.more_vert,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0,
                                                vertical: 4.0),
                                            child: Text(
                                              "${cardsList[position].tasksRemaining} Sorular",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: LinearProgressIndicator(
                                              value: cardsList[position]
                                                  .taskCompletion,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)),
                            ),
                          ),
                          onHorizontalDragEnd: (details) {
                            animationController = AnimationController(
                                vsync: this,
                                duration: Duration(milliseconds: 20));
                            curvedAnimation = CurvedAnimation(
                                parent: animationController,
                                curve: Curves.fastOutSlowIn);
                            animationController.addListener(() {
                              setState(() {
                                currentColor =
                                    colorTween.evaluate(curvedAnimation);
                              });
                            });
                            if (details.velocity.pixelsPerSecond.dx > 0) {
                              if (cardIndex > 0) {
                                cardIndex--;
                                colorTween = ColorTween(
                                    begin: currentColor,
                                    end: appColors[cardIndex]);
                              }
                            } else {
                              if (cardIndex < 2) {
                                cardIndex++;
                                colorTween = ColorTween(
                                    begin: currentColor,
                                    end: appColors[cardIndex]);
                              }
                            }
                            setState(() {
                              scrollController.animateTo((cardIndex) * 256.0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.fastOutSlowIn);
                            });
                            colorTween.animate(curvedAnimation);
                            animationController.forward();
                          },
                          onTap: () {
                            Navigator.of(context).pushNamed("/question");
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      drawer: Semantics(
        container: true,
        button: true,
        child: Text("This is Demo App", style: TextStyle(color: Colors.white, fontSize: pixelRatio*10),),
      ),
    );
  }
}
