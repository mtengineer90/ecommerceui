import 'dart:ui' as prefix0;
import 'dart:io';
import 'package:Eurotolia/Forms/FormProfileEdit/editProfileForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import '../../../main.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilePageState();
  }
}

class ProfilePageState extends State<ProfilePage>
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
