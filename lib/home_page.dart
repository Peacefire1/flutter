import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Initial";

  @override
  void initState() {
    print("init state");
    super.initState();
  }

  void setTitile() {
    setState(() {
      title = "Switched";
    });
  }

  @override
  void reassemble() {
    // TODO: implement reassemble
    print("ressemble");
    super.reassemble();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    print("Did setState");
    super.setState(fn);
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("deactived");
    super.deactivate();
  }

  @override
  void activate() {
    // TODO: implement activate
    print("activated");
    super.activate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("widget ashiglaj duussanii daraa duudagddag ");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    // TODO: implement didUpdateWidget
    print('did update widget');
    super.didUpdateWidget(oldWidget);
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
