import 'dart:ui' as prefix0;

import 'package:Eurotolia/Forms/FormLogin/loginForm.dart';
import 'package:Eurotolia/Screens/PageCheckout/checkout.dart';
import 'package:Eurotolia/Screens/PageCreateAccount/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../../main.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  TextEditingController _reviewController = TextEditingController();
  late Animation<double> animation;
  late AnimationController controller;
  bool _isLoggedIn = false;
  String _debugLabelString = "", review = '', runningdate = '';
  bool _requireConsent = false;
  var dd, finalDate;
  DateTime _date = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundColor: Colors.white,
        // title:
        //     Container(padding: EdgeInsets.all(10), color: colorHeader, child: Icon(Icons.menu)),
        title: Center(
          child: Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                     Text("Giriş",
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
      body: SingleChildScrollView(
        child: Container(
          color: colorWhite,
          //height: MediaQuery.of(context).size.height,
          child: LoginForm(),
        ),
      ),
    );
  }
}
