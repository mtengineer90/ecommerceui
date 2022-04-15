import 'dart:ui' as ui;

import 'package:Eurotolia/Widgets/WidgetCart/widgetCart.dart';
import 'package:Eurotolia/Screens/PageLogin/login.dart';
import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../../main.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CartPageState();
  }
}

class CartPageState extends State<CartPage>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorWhite,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 40),
              color: colorWhite,
              width: MediaQuery.of(context).size.width,
              child: new ListView.builder(
                itemBuilder: (BuildContext context, int index) =>
                    CartCard(index),
                itemCount: 20,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              height: 40,
              color: colorHeader,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.card_travel,
                              size: 17,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("4 Adet",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Container(
                            height: 20,
                            child: VerticalDivider(
                              color: Colors.white,
                            )),
                        Row(
                          children: <Widget>[
                            Text("200.00 ",
                                style: TextStyle(color: Colors.white)),
                            Text(
                              '₺', style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Onayla",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 1),
                                child: Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 17,
                                ))
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.only(top: 32), child: Divider())
          ],
        ),
      ),
    );
  }
}
