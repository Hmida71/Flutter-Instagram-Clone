// ! Created By DZ-TM071 Cpy-R2021 ( 2021-09-23 )
import 'package:flutter/material.dart';

// Todo  Pages ==============
import 'Pages/HomePage.dart';
import 'Index.dart';
// Todo fin =================
void main() {
  runApp(InstagramClone());
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
