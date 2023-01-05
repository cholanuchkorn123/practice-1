import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink.shade200,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red.shade100,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int dicenum = 1;
  int dicenum2 = 1;
  void getRandom() {
    dicenum = Random().nextInt(6) + 1;
    dicenum2 = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  getRandom();
                });
              },
              child: Image.asset('images/dice$dicenum.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    getRandom();
                  });
                },
                child: Image.asset('images/dice$dicenum2.png')),
          ),
        ],
      ),
    );
    ;
  }
}
