import 'dart:ui' as ui;
import 'package:Eurotolia/Widgets/WidgetAllProduct/widgetAllProduct.dart';
import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../main.dart';

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  _AllProductsPageState createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> with SingleTickerProviderStateMixin{
  late Animation<double> animation;
  late AnimationController controller;

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
                      Text("Kategori Adı",
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
        //height: MediaQuery.of(context).size.height,
        child: Container(
          margin: EdgeInsets.only(left: 0, right: 0, top: 0),
          color: colorWhite,
          width: MediaQuery.of(context).size.width,
          child: new ListView.builder(
            itemBuilder: (BuildContext context, int index) => WidgetAllProduct(),
            itemCount: 20,
          ),
        ),
      ),
    );
  }
}
