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

  int length = 10000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
        centerTitle: true,
        automaticallyImplyLeading: true,
        leading: ElevatedButton.icon(
            onPressed: () {}, icon: BackButton(), label: Text("")),
        actions: [
          Row(
            children: [
              Text("Action 1"),
              ElevatedButton(onPressed: () {}, child: Text("Button"))
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Button"),
      ),
      // persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      body: Align(
        alignment: FractionalOffset.center,
        child: Scrollbar(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: List.generate(
              length,
              (e) => Container(
                margin: EdgeInsets.all(10),
                color: Colors.amberAccent,
                width: double.infinity,
                height: 100,
                child: Center(
                  child: Text("${e}"),
                ),
              ),
            ),
          ),
          // child: SingleChildScrollView(
          //   physics: BouncingScrollPhysics(),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       for (int i = 0; i <= length; i++)
          //         Container(
          //           margin: EdgeInsets.all(10),
          //           color: Colors.amberAccent,
          //           width: double.infinity,
          //           height: 100,
          //           child: Center(
          //             child: Text("${i}"),
          //           ),
          //         ),
          //     ],
          //   ),
          // ),
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