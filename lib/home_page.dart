import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is String",
          style: TextStyle(
              backgroundColor: Colors.amberAccent,
              color: Colors.blueGrey,
              decoration: TextDecoration.lineThrough),
        ),
      ),
    );
  }
}
