import 'package:Eurotolia/Screens/PageCheckout/checkout.dart';
import 'package:Eurotolia/Screens/PageCreateAccount/account.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: Colors.white,
                    border: Border.all(width: 0.2, color: Colors.grey)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Text(
                    //   "Giriş",
                    //   style: TextStyle(fontSize: 17, color: Colors.black),
                    //   textAlign: TextAlign.center,
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    //color: Colors.grey[200],
                                    //padding: EdgeInsets.all(20),
                                    child: Text(
                                  "Kullanıcı Adı",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0, right: 5, bottom: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey)),
                              child: TextFormField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  icon: const Icon(
                                    Icons.account_box,
                                    color: Colors.black38,
                                  ),
                                  hintText: 'Kullanıcı Adınız...',
                                  //labelText: 'Enter E-mail',
                                  contentPadding: EdgeInsets.fromLTRB(
                                      0.0, 10.0, 20.0, 10.0),
                                  border: InputBorder.none,
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.vertical()),
                                ),
                                validator: (val) =>
                                    val!.isEmpty ? 'Giriş yapınız' : null,
                                //onSaved: (val) => result = val,
                                //validator: _validateEmail,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, right: 5, bottom: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    //color: Colors.grey[200],
                                    //padding: EdgeInsets.all(20),
                                    child: Text(
                                  "Şifre",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 0, right: 5, bottom: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 0.5, color: Colors.grey)),
                              child: TextFormField(
                                autofocus: false,
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: const Icon(
                                    Icons.lock,
                                    color: Colors.black38,
                                  ),
                                  hintText: 'Şifreniz...',
                                  //labelText: 'Enter E-mail',
                                  contentPadding: EdgeInsets.fromLTRB(
                                      0.0, 10.0, 20.0, 10.0),
                                  border: InputBorder.none,
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                                  //border: OutlineInputBorder(borderRadius: BorderRadius.vertical()),
                                ),
                                validator: (val) =>
                                   val!.isEmpty ? 'Giriş yapınız' : null,
                                //onSaved: (val) => result = val,
                                //validator: _validateEmail,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, right: 5, bottom: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.only(top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                //color: Colors.grey[200],
                                //padding: EdgeInsets.all(20),
                                child: Text(
                              "Hesabınız Yok mu?",
                              style: TextStyle(color: Colors.grey),
                            )),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AccountPage()),
                                );
                              },
                              child: Container(
                                  margin: EdgeInsets.only(left: 5),
                                  //color: Colors.grey[200],
                                  //padding: EdgeInsets.all(20),
                                  child: Text(
                                    "Kayıt Ol",
                                    style: TextStyle(color: colorHeader),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckoutPage()),
                );
              },
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: colorHeader,
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: Text(
                    "Giriş",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
