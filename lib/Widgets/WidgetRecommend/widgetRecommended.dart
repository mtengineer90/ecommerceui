import 'package:Eurotolia/Screens/PageDetailsProduct/pageDetailsProductPage.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class RecommendedCard extends StatefulWidget {
  @override
  _RecommendedCardState createState() => _RecommendedCardState();
}

class _RecommendedCardState extends State<RecommendedCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
          width: 100,
          child: Column(
            children: <Widget>[
              Container(
                  height: 100,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: <Widget>[
                      Center(
                        child: Image.asset(
                          'assets/tshirt.png',
                        ),
                      ),
                    ]),
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Ürün Adı",
                style: TextStyle(fontSize: 14, color: Colors.black38),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Row(
                        children: <Widget>[

                          Text(
                            "20.00 ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          Text(
                            '₺', style: TextStyle(
                            fontSize: 12,
                            color: Colors.black87,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: colorYel,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: colorYel,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: colorYel,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_half,
                      color: colorYel,
                      size: 15,
                    ),
                    Icon(
                      Icons.star_border,
                      color: colorYel,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
