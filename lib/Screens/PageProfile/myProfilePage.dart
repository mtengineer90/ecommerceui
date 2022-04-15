import 'dart:io';
import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import '../../Forms/FormProfileEdit/editProfileForm.dart';
import '../../main.dart';

class MyProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<MyProfilePage>
    with SingleTickerProviderStateMixin {
  TextEditingController _reviewController = TextEditingController();
  TextEditingController _dayController = TextEditingController();
  TextEditingController _monthController = TextEditingController();
  late Animation<double> animation;
  late AnimationController controller;
  String _debugLabelString = "", review = '', runningdate = '';
  var dd, finalDate;
  int cardStatus = 0;

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
                      Text("Profile",
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
          child: EditProfileForm(),
        ),
      ),
    );
  }
}
