import 'dart:io';
import 'dart:ui' as prefix0;
import 'package:Eurotolia/Forms/FormAccountCreate/createAccountForm.dart';
import 'package:image_picker/image_picker.dart';
import 'package:Eurotolia/Screens/PageLogin/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../main.dart';

class AccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AccountPageState();
  }
}

class AccountPageState extends State<AccountPage>
    with SingleTickerProviderStateMixin {
  TextEditingController _reviewController = TextEditingController();
  TextEditingController _dayController = TextEditingController();
  TextEditingController _monthController = TextEditingController();
  late Animation<double> animation;
  late AnimationController controller;
  bool _isLoggedIn = false;
  String _debugLabelString = "", review = '', runningdate = '';
  bool _requireConsent = false;
  var dd, finalDate;
  DateTime _date = DateTime.now();
  bool _cardInfo = false;
  int cardStatus = 0;

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
                      Text("Hesap Oluştur",
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
          child: CreateAccountForm(),
        ),
      ),
    );
  }
}
