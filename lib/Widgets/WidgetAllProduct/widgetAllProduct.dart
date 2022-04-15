import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class WidgetAllProduct extends StatefulWidget {
  const WidgetAllProduct({Key? key}) : super(key: key);

  @override
  _WidgetAllProductState createState() => _WidgetAllProductState();
}

class _WidgetAllProductState extends State<WidgetAllProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailsPage()),
          );
        },
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
              color: Colors.white,
              border: Border.all(width: 0.2, color: Colors.grey)),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Ürün Adı ...",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black54),
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
                                  Icon(
                                    Icons.star,
                                    color: colorYel,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: colorYel,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: colorYel,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: colorYel,
                                    size: 17,
                                  ),
                                  // Container(
                                  //   margin: EdgeInsets.only(left: 3),
                                  //   child: Text(
                                  //     "4.5",
                                  //     style: TextStyle(
                                  //         color: Colors.grey),
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[

                                      Text(
                                        "20.00 ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      Text(
                                        '₺', style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black87,),
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
                Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Column(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          child: Icon(
                            Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

