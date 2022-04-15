import 'package:Eurotolia/Screens/PageHome/home.dart';
import 'package:Eurotolia/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: Container(
        padding: EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.transparent,
              minRadius: 70,
              maxRadius: 70,
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    child: logo),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Eurotolia", style: TextStyle(color: colorHeader2, fontSize: 17, fontWeight: FontWeight.bold)),
                    Text(" ETicaret UI", style: TextStyle(color: colorHeader,fontSize: 17))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
