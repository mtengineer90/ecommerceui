import 'dart:ui' as prefix0;

import 'package:Eurotolia/Widgets/WidgetCategory/widgetCategory.dart';
import 'package:Eurotolia/Widgets/WidgetDiscount/widgetDiscount.dart';
import 'package:Eurotolia/Widgets/WidgetLaunchProduct/widgetLaunchProduct.dart';
import 'package:Eurotolia/Widgets/WidgetRecommend/widgetRecommended.dart';
import 'package:Eurotolia/Widgets/WidgetTrend/widgetTrending.dart';
import 'package:Eurotolia/Screens/AllProducts/allProductsPage.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/CategoryPage/category.dart';
import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../../main.dart';

class ProductPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductPageState();
  }
}

class ProductPageState extends State<ProductPage>
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
      body: SingleChildScrollView(
        child: Container(
          color: colorWhite,
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Kategori",
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryPage()));
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Tümünü Göster",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black45)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 0),
                  color: colorWhite,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  height: 55,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        WidgetCategory(),
                    itemCount: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Yeni Ürünler",
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllProductsPage()));
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Tümünü Göster",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black45)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                ////// <<<<< New Arrival List >>>>> //////
                Container(
                  margin: EdgeInsets.only(left: 0, right: 0),
                  color: colorWhite,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  height: 210,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        ////// <<<<< New Arrival Card >>>>> //////
                        NewArrivalCard(),
                    itemCount: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Çok Satanlar",
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllProductsPage()));
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Tümünü Göster",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black45)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 0),
                  color: colorWhite,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  height: 210,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        TrendingCard(),
                    itemCount: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Kampanyalı Ürünler",
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllProductsPage()));
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Tümünü Göster",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black45)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 0),
                  color: colorWhite,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 10),
                  height: 210,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        DiscountCard(),
                    itemCount: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Önerilenler",
                          style: TextStyle(fontSize: 20),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AllProductsPage()));
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Tümünü Göster",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black45),
                                ),
                                Icon(Icons.chevron_right, color: Colors.black45)
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 0, bottom: 10),
                  color: colorWhite,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  height: 210,
                  child: new ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) =>
                        RecommendedCard(),
                    itemCount: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
