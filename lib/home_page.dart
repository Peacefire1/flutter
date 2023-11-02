import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String title = "Initial";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
      ],
    );
  }
}
