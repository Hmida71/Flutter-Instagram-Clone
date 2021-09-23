import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/a.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/b.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  ))
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/c.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/d.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  ))
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/a.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/b.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  ))
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/c.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage("images/d.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 200,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
