import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class CartCard extends StatefulWidget {
  final index;

  CartCard(this.index);
  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
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
        child: new Container(
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
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 10, left: 0),
                          height: 80,
                          child: Image.asset('assets/kazak.png')),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.index % 2 == 0
                                  ? "Ürün Adı"
                                  : "Ürün Listesi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 17, color: Colors.black87),
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
                                    widget.index % 2 == 0
                                        ? Icons.star
                                        : Icons.star_half,
                                    color: colorYel,
                                    size: 17,
                                  ),
                                  Icon(
                                    Icons.star_border,
                                    color: colorYel,
                                    size: 17,
                                  ),
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
                                        widget.index % 2 == 0
                                            ? "20.20"
                                            : "150.00",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        '₺', style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.black54,),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 20, right: 5),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.delete,
                                          color: Colors.grey[500],
                                          size: 20,
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
