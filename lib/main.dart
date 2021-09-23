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
