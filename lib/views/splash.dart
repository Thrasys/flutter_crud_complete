import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud/views/user_list.dart';

class Splash extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<Splash> with SingleTickerProviderStateMixin {
  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 10);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => UserList()),
        (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    super.initState();

    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 1));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {
          _visible = true;
        }));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    var c = Colors.green;
    var r = Colors.blue;
    var u = Colors.orange;
    var d = Colors.red;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  "DEVTVAS",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  new Text(
                    "C",
                    style:
                        TextStyle(fontSize: 40, fontFamily: 'Roboto', color: c),
                  ),
                  new Text(
                    "R",
                    style:
                        TextStyle(fontSize: 40, fontFamily: 'Roboto', color: r),
                  ),
                  new Text(
                    "U",
                    style:
                        TextStyle(fontSize: 40, fontFamily: 'Roboto', color: u),
                  ),
                  new Text(
                    "D",
                    style:
                        TextStyle(fontSize: 40, fontFamily: 'Roboto', color: d),
                  ),
                ],
              ),

              // Column(
              //   children: [
              //     new Image.network(
              //       'https://intellipaat.com/mediaFiles/2015/08/MongoDB-CRUD-operations.jpg',
              //       scale: 2.0,
              //     ),
              //   ],
              // ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
