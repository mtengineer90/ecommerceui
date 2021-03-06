import 'dart:ui' as prefix0;

import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

import '../../main.dart';

class OrderListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OrderListPageState();
  }
}

class OrderListPageState extends State<OrderListPage>
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
    // runningdate = _formatDateTime1(DateTime.now());
    // Timer.periodic(Duration(seconds: 1), (Timer t) => _getDate());
    var now = new DateTime.now();
    runningdate = new DateFormat("dd-MM-yyyy").format(now);
    super.initState();
  }

  void _getDate() {
    final DateTime now = DateTime.now();
    final String formattedDateTime1 = _formatDateTime1(now);
    setState(() {
      runningdate = formattedDateTime1;
    });
  }

  String _formatDateTime1(DateTime dateTime) {
    return DateFormat('dd-MM-yyyy').format(dateTime);
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1930),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _date) {
      dd = DateTime.parse(_date.toString());
      finalDate = "${dd.day}-${dd.month}-${dd.year}";
      runningdate = finalDate.toString();
      //print('Birth Date : $finalDate');
      //print('Birth Date : $date');
      setState(() {
        _date = picked;
        var dd1 = DateTime.parse(_date.toString());
        var finalDate1 = "${dd1.day}-${dd1.month}-${dd1.year}";
        runningdate = finalDate1.toString();
        // DateTime dateTime = DateTime.parse(date);
        // Fluttertoast.showToast(msg: dateTime.toString(),toastLength: Toast.LENGTH_SHORT);
        // _date = dateTime;
      });
    }
  }

  int _rating = 0;

  void rate(int rating) {
    //Other actions based on rating such as api calls.
    setState(() {
      _rating = rating;
    });
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
                      Text("Sipari?? Detay??",
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
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // GestureDetector(
                //   onTap: () {
                //     viewProducts();
                //   },
                //   child: Container(
                //       width: MediaQuery.of(context).size.width,
                //       margin: EdgeInsets.only(
                //           top: 5, left: 20, right: 20, bottom: 5),
                //       padding: EdgeInsets.all(15),
                //       decoration: BoxDecoration(
                //           borderRadius: BorderRadius.all(Radius.circular(5.0)),
                //           color: Colors.white,
                //           border: Border.all(width: 0.2, color: Colors.grey)),
                //       child: Column(
                //         children: <Widget>[
                //           Text(
                //             "??r??nleri G??ster",
                //             style: TextStyle(
                //                 fontSize: 17,
                //                 color: colorHeader,
                //                 fontWeight: FontWeight.bold),
                //             textAlign: TextAlign.center,
                //           ),
                //         ],
                //       )),
                // ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 5),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: Colors.white,
                        border: Border.all(width: 0.2, color: Colors.grey)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Teslimat?? Alan",
                          style: TextStyle(fontSize: 17, color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        //color: Colors.grey[200],
                                        //padding: EdgeInsets.all(20),
                                        child: Text(
                                      "Eurotolia",
                                      style: TextStyle(color: Colors.black54),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.location_on,
                                              color: Colors.grey, size: 16),
                                          Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "Modanisa",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 0, right: 5, bottom: 5),
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.phone,
                                              color: Colors.grey, size: 16),
                                          Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "+90XXXXXXXX",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: 20, right: 5, bottom: 3),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                        //color: Colors.grey[200],
                                        //padding: EdgeInsets.all(20),
                                        child: Text(
                                      "Teslimat Tarihi",
                                      style: TextStyle(color: Colors.black54),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.only(top: 5, bottom: 5),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(Icons.calendar_today,
                                              color: Colors.grey, size: 16),
                                          Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                runningdate,
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.white,
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "??r??n Listesi",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "??r??n 1",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "1",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 3, right: 3),
                                        child: Icon(Icons.close,
                                            size: 15, color: Colors.black54),
                                      ),

                                      Text(
                                        "50.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "??r??n 2",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "2",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 3, right: 3),
                                        child: Icon(Icons.close,
                                            size: 15, color: Colors.black54),
                                      ),

                                      Text(
                                        "12.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "??r??n 3",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "1",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 3, right: 3),
                                        child: Icon(Icons.close,
                                            size: 15, color: Colors.black54),
                                      ),
                                      Text(
                                        "75.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "??r??n 4",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "4",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 3, right: 3),
                                        child: Icon(Icons.close,
                                            size: 15, color: Colors.black54),
                                      ),
                                      Text(
                                        "25.00",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Toplam Tutar",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "250.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.white,
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Al????veri?? Detay??",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Toplam ??r??nler",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Text(
                                    "4",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(color: Colors.black54),
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Toplam Tutar",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "250.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "??ndirim",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Icon(Icons.remove,
                                          size: 15, color: colorHeader),
                                      Text(
                                        "50.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: colorHeader),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: colorHeader,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Ara Toplam",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "200.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                          color: Colors.black54),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Kupon ??ndirimi",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Icon(Icons.remove,
                                          size: 15, color: colorHeader),

                                      Text(
                                        "0.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: colorHeader),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                        fontSize: 15,
                                        color: colorHeader,),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Teslimat ??creti",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[
                                      Text(
                                        "100.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black54),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      //color: Colors.grey[200],
                                      //padding: EdgeInsets.all(20),
                                      child: Text(
                                    "Toplam ??denen",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  Container(
                                      child: Row(
                                    children: <Widget>[

                                      Text(
                                        "300.00 ",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        '???', style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black54),
                                      ),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:
                      EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Colors.white,
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "??deme Detay??",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5, right: 5, bottom: 5),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding:
                                  EdgeInsets.only(top: 0, right: 5, bottom: 5),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                            //color: Colors.grey[200],
                                            //padding: EdgeInsets.all(20),
                                            child: Text(
                                          "Kap??da ??deme",
                                          style: TextStyle(color: Colors.grey),
                                        )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(top: 0, right: 5, bottom: 5),
                              width: MediaQuery.of(context).size.width,
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(Icons.location_on,
                                                  color: Colors.grey, size: 16),
                                              Container(
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  child: Text(
                                                    "Modanisa",
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void viewProducts() {
    showDialog<String>(
      context: context,
      barrierDismissible:
          true, // dialog is dismissible with a tap on the barrier
      builder: (BuildContext context) {
        return Theme(
          data: Theme.of(context).copyWith(dialogBackgroundColor: colorWhite),
          child: AlertDialog(
            // title: new Text(
            //   proImage + '$photo',
            //   style: TextStyle(color: Colors.white),
            // ),
            content: Container(
              margin: EdgeInsets.only(left: 0, right: 0, top: 0),
              color: colorWhite,
              width: MediaQuery.of(context).size.width,
              child: new ListView.builder(
                itemBuilder: (BuildContext context, int index) => new Container(
                  margin: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(1.0)),
                      color: Colors.white,
                      border: Border.all(width: 0.2, color: Colors.grey)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailsPage()),
                      );
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            // color: Colors.red,
                            child: Row(
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.only(right: 10, left: 0),
                                    height: 90,
                                    child: Image.asset('assets/ayakkabi.png')),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "??r??n Ad?? Birinci",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black54),
                                        textAlign: TextAlign.start,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: colorYel,
                                              size: 17,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 3),
                                              child: Text(
                                                "4.5",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  "20.00",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 3,
                                                ),
                                                Text(
                                                  '???', style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.black54),
                                                ),
                                              ],
                                            ),

                                            // Icon(
                                            //   Icons.delete,
                                            //   color: Colors.grey,
                                            //   size: 23,
                                            // ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //     margin: EdgeInsets.only(right: 5),
                          //     child: Column(
                          //       children: <Widget>[
                          //         Container(
                          //           color: Colors.white,
                          //           child: Icon(
                          //             Icons.chevron_right,
                          //             color: Colors.grey,
                          //           ),
                          //         ),
                          //       ],
                          //     )),
                        ],
                      ),
                    ),
                  ),
                ),
                itemCount: 20,
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text(
                  "Tamam",
                  style: TextStyle(color: colorHeader),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
