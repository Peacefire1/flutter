import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: DecorationImage(image: NetworkImage("")),
            shape: BoxShape.circle,
            color: Colors.amberAccent,
            // borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: Offset(3, 6),
                spreadRadius: -8,
                color: Color.fromRGBO(0, 0, 0, .4),
              )
            ]),
        child: Text(
          "This is String",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
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
  }
}
