import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Initial";

  void setTitile() {
    setState(() {
      title = "Switched";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyText(title),
          ElevatedButton(onPressed: setTitile, child: Text("Switch"))
        ],
      ),
    ));
  }
}

class MyText extends StatelessWidget {
  String title;
  MyText(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title);
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