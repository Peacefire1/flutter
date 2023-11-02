import 'package:flutter/material.dart';
import 'package:fluttermovie/guess_card.dart';
import 'package:fluttermovie/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GuessCard(),
      // home: HomePage(),
    );
  }
}
