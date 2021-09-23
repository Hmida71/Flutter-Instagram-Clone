// ! Created By DZ-TM071 Cpy-R2021 ( 2021-09-23 )

import 'package:flutter/material.dart';
import 'package:instagram_clone/Pages/Home.dart';

class Index extends StatefulWidget {
  Index({Key? key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> Pages = [
    Text("hhhhhhhhhhhh\jj"),
    Text("999999999999999999\jj"),
    Text("zzzzzzzzzzzzzzz\jj"),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: TabBarView(
        children: [
          Center(
            child: Text(
              "Home",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Home(),
          Center(
            child: Text(
              "chat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
