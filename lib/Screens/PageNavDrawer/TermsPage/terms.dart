import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class TermsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TermsPageState();
  }
}

class TermsPageState extends State<TermsPage> with SingleTickerProviderStateMixin {
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
                      Text("Şartlar ve Koşullar",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                // GestureDetector(
                //   onTap: () {
                //     bottomSheetMenu();
                //   },
                //   child: Container(
                //       padding: EdgeInsets.all(5),
                //       //color: colorHeader,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //         color: colorHeader,
                //         boxShadow: <BoxShadow>[
                //           BoxShadow(
                //             color: Colors.grey,
                //             //offset: Offset(1.0, 6.0),
                //             blurRadius: 2.0,
                //           ),
                //         ],
                //       ),
                //       child: Container(
                //           child: Icon(
                //         Icons.menu,
                //         color: Colors.white,
                //         size: 20,
                //       ))),
                // ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: colorWhite,
        //height: MediaQuery.of(context).size.height,
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              color: Colors.white,
              border: Border.all(width: 0.2, color: Colors.grey)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Row(
              //   children: <Widget>[
              //     Text(
              //       "Şartlar ve Koşullar",
              //       style: TextStyle(fontSize: 17, color: Colors.black),
              //       textAlign: TextAlign.center,
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              Text(
                "Şartlar ve Koşullar hakkında ait tüm detayları, kullanım koşulları ve şartları öğrenmek için sayfamızı ziyaret edebilirsiniz.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
