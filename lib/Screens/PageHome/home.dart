import 'dart:ui' as prefix0;

import 'package:Eurotolia/Screens/BottomNavigation/CartPage/cartPage.dart';
import 'package:Eurotolia/Screens/BottomNavigation/ProductPage/productPage.dart';
import 'package:Eurotolia/Screens/BottomNavigation/ProfilePage/profilePage.dart';
import 'package:Eurotolia/Screens/BottomNavigation/SearchPage/searchPage.dart';
import 'package:Eurotolia/Screens/PageProfile/myProfilePage.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/AllCartPage/allCartPage.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/CategoryPage/category.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/FavouritePage/favourite.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/NotificationPage/notifications.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/OrderPage/orders.dart';
import 'package:Eurotolia/Screens/PageNavDrawer/TermsPage/terms.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../../main.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  late Animation<double> animation;
  late AnimationController controller;
  int currentIndex = selectedPage;

  @override
  void initState() {
    super.initState();
  }

  final pageOptions = [
    ProductPage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    Drawer drawer = new Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfilePage()),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                                padding: EdgeInsets.all(1.0),
                                child: CircleAvatar(
                                  radius: 30.0,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage('assets/logo.png'),
                                ),
                                decoration: new BoxDecoration(
                                  color: Colors.grey, // border color
                                  shape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Merhaba,",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black38),
                                  ),
                                  Text(
                                    "Eurotolia Kullanıcı",
                                    style: TextStyle(fontSize: 17),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Divider()),

                new ListTile(
                    leading: new Icon(CupertinoIcons.app_badge,color: colorHeader2,),
                    title: new Text('Siparişer'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderPage()),
                          )
                        }),
                new ListTile(
                    leading: new Icon(CupertinoIcons.shopping_cart,color: colorHeader2,),
                    title: new Text('Sepet'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AllCartPage()),
                          )
                        }),
                new ListTile(
                    leading: new Icon(CupertinoIcons.rectangle_3_offgrid,color: colorHeader2,),
                    title: new Text('Kategori'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryPage()),
                          )
                        }),
                new ListTile(
                    leading: new Icon(CupertinoIcons.heart,color: colorHeader2,),
                    title: new Text('Favoriler'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FavouritePage()),
                          )
                        }),
                new ListTile(
                    leading: new Icon(CupertinoIcons.bell,color: colorHeader2,),
                    title: new Text('Bildirimler'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NotifyPage()),
                          )
                        }),
                Container(
                    margin: EdgeInsets.only(top: 0, left: 20, right: 20),
                    child: Divider()),
                //Divider(color: Colors.grey),
                new ListTile(
                  leading: new Icon(CupertinoIcons.shield_lefthalf_fill,color: colorHeader2,),
                  title: new Text('Şartlar ve Koşullar'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TermsPage()),
                    )
                  },
                ),
                new ListTile(
                  leading: new Icon(Icons.settings_power,color: colorHeader2,),
                  title: new Text('Çıkış'),
                  onTap: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      drawer: drawer,
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Builder(builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: colorHeader2), // set your color here
            onPressed: () {            Scaffold.of(context).openDrawer();
            },
          ),
        ),
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            margin: EdgeInsets.only(right: 35),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 5),
                          width: 40,
                          child: Image.asset('assets/logo.png')),
                      Text("Eurotolia",
                          style: TextStyle(
                              color: colorHeader2,
                              fontSize: 19,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: pageOptions[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: colorHeader,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.grey[500]))),
        child: BottomNavigationBar(
          selectedItemColor: colorHeader2,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.house, size: 20,color: colorHeader2,),
                label: 'Anasayfa'
                //title: SizedBox.shrink()
            ),
            BottomNavigationBarItem(
                icon: new Stack(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: new Icon(
                      CupertinoIcons.search,color: colorHeader2,
                      size: 20,
                    ),
                  ),
                ]),
            label: 'Ara'
            //    title: SizedBox.shrink()
            ),
            BottomNavigationBarItem(
                icon: new Stack(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: new Icon(
                      CupertinoIcons.cart_fill_badge_plus,color: colorHeader2,
                      size: 20,
                    ),
                  ),
                  // currentIndex == 3
                  //     ? Container()
                  //     : pageDirect == ""
                  //         ? Positioned(
                  //             right: 0,
                  //             child: Container(
                  //               padding: EdgeInsets.only(
                  //                   top: 1, bottom: 1, right: 5, left: 5),
                  //               margin: EdgeInsets.only(
                  //                   right: 0, left: 0, bottom: 10),
                  //               decoration: BoxDecoration(
                  //                   color: Colors.transparent,
                  //                   borderRadius: BorderRadius.circular(15)),

                  //             ),
                  //           )
                  //         : Positioned(
                  //             right: 0,
                  //             child: Container(
                  //               padding: EdgeInsets.only(
                  //                   top: 1, bottom: 1, right: 5, left: 5),
                  //               margin: EdgeInsets.only(
                  //                   right: 0, left: 0, bottom: 10),
                  //               decoration: BoxDecoration(
                  //                   color: colorHeader,
                  //                   borderRadius: BorderRadius.circular(15)),
                  //               child: Text(
                  //                 pageDirect,
                  //                 textAlign: TextAlign.start,
                  //                 style: TextStyle(
                  //                     color: Colors.white,
                  //                     fontSize: 10,
                  //                     //fontFamily: 'Oswald',
                  //                     fontWeight: FontWeight.w400),
                  //               ),
                  //             ),
                  //           )
                ]),
            label: 'Sepet'
            //    title: SizedBox.shrink()
            ),
            BottomNavigationBarItem(
                icon: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Icon(Icons.account_circle, size: 20,color: colorHeader2,)),
                label: 'Hesabım'
              //    title: SizedBox.shrink()
            ),
          ],
          onTap: (int _selectedPage) {
            setState(() {
              currentIndex = _selectedPage;
              selectedPage = _selectedPage;
            });
            //print(selectedPage);
          },
        ),
      ),
    );
  }
}
