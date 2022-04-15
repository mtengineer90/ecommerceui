import 'dart:ui' as prefix0;

import 'package:Eurotolia/Widgets/WidgetFav/widgetFav.dart';
import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class FavouritePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FavouritePageState();
  }
}

class FavouritePageState extends State<FavouritePage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  bool _isLoggedIn = false;
  String _debugLabelString = "";
  bool _requireConsent = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text("Beğendiklerim",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: colorWhite,
        child: Container(
          margin: EdgeInsets.only(left: 0, right: 0, top: 0),
          color: colorWhite,
          width: MediaQuery.of(context).size.width,
          child: new ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                FavCard(),
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}
