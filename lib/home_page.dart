import 'package:flutter/foundation.dart';
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

void test() {
  setEquals(a, b) {
    if (a == null || b == null)
      return a == b; // If both are null they can be considered equal

    final int length = a.length;
    if (b.length != length) return false;
  }
}

// Widgets