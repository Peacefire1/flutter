import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttermovie/card.dart';

class GuessCard extends StatefulWidget {
  const GuessCard({super.key});

  @override
  State<GuessCard> createState() => _GuessCardState();
}

class _GuessCardState extends State<GuessCard> {
  final List<String> _cardList = ["A", "K", "Q", "J"];
  Timer? _timerController;
  List<String> _showCardList = [];
  int _timer = 1000;

  @override
  void initState() {
    super.initState();
    _cardList.shuffle();
    _timerController = Timer.periodic(Duration(milliseconds: 10), (timer) {
      if (_timer > 0) {
        setState(() {
          _timer = _timer - 1;
        });
      }
    });
  }

  void onClick(String title) {
    if (title == "A") {
      _timerController?.cancel();
    }
    setState(() {
      _showCardList.add(title);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * _timer / 1000,
              color: Colors.amberAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(_timer.toString()),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  MyCard(
                    _cardList[0],
                    onTap: onClick,
                    active: _showCardList.contains(_cardList[0]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MyCard(
                    _cardList[1],
                    onTap: onClick,
                    active: _showCardList.contains(_cardList[1]),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  MyCard(
                    _cardList[2],
                    onTap: onClick,
                    active: _showCardList.contains(_cardList[2]),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  MyCard(
                    _cardList[3],
                    onTap: onClick,
                    active: _showCardList.contains(_cardList[3]),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
