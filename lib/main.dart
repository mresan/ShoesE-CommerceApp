import 'package:flutter/material.dart';
import 'package:shoes_app/home page/home_page.dart';

void main() {
  runApp(ShoesApp());
}

class ShoesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Adventor',
      ),
      home: HomePage(),
    );
  }
}
