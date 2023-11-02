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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(elevation: MaterialStateProperty.all(20)),
          onPressed: () =>
              onSubmit(title == "Button off" ? "Button on" : "Button off"),
          child: Text(title),
        ),
      ),
    );
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