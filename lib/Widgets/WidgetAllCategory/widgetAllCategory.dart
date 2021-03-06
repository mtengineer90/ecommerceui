import 'package:flutter/material.dart';
import 'package:Eurotolia/Screens/AllProducts/allProductsPage.dart';
class WidgetAllCategory extends StatefulWidget {
  const WidgetAllCategory({Key? key}) : super(key: key);

  @override
  _WidgetAllCategoryState createState() => _WidgetAllCategoryState();
}

class _WidgetAllCategoryState extends State<WidgetAllCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AllProductsPage()),
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
                          height: 50,
                          child: Image.asset('assets/tshirt.png')),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Kategori Adı",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.shopping_basket,
                                        color: Colors.grey,
                                        size: 17,
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "20+ Adet",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
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
                Container(
                    child: Container(
                      color: Colors.white,
                      child: Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
