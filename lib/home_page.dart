import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Button off";

  void onSubmit(String value) {
    setState(() {
      title = value;
    });
  }

  bool watch = true;

  void onVisible() {
    setState(() {
      watch = !watch;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: FractionalOffset.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: watch,
            child: Text("Hello"),
          ),
          ElevatedButton(onPressed: onVisible, child: Text("Button"))
        ],
      ),
    ));
  }
}

    // return Scaffold(
    //   body: ColoredBox(
    //     color: Colors.red,
    //     child: Text(
    //       "This is String",
    //       style: TextStyle(
    //         backgroundColor: Colors.amberAccent,
    //         color: Colors.blueGrey,
    //         decoration: TextDecoration.lineThrough,
    //         fontSize: 30,
    //         fontWeight: FontWeight.bold,
    //         letterSpacing: 1,
    //         wordSpacing: 4,
    //       ),
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    // );
    // return Scaffold(
    //   body: Padding(
    //     padding: EdgeInsets.only(top: 100, left: 100),
    //     // padding: EdgeInsets.all(100),
    //     child: Text(
    //       "This is String",
    //       style: TextStyle(
    //         backgroundColor: Colors.amberAccent,
    //         color: Colors.blueGrey,
    //         decoration: TextDecoration.lineThrough,
    //         fontSize: 30,
    //         fontWeight: FontWeight.bold,
    //         letterSpacing: 1,
    //         wordSpacing: 4,
    //       ),
    //     ),
    //   ),
    // );
    // return Scaffold(
    //   body: Center(
    //     heightFactor: 10.5,
    //     child: Text(
    //       "This is String",
    //       style: TextStyle(
    //         backgroundColor: Colors.amberAccent,
    //         color: Colors.blueGrey,
    //         decoration: TextDecoration.lineThrough,
    //         fontSize: 30,
    //         fontWeight: FontWeight.bold,
    //         letterSpacing: 1,
    //         wordSpacing: 4,
    //       ),
    //     ),
    //   ),
    // );