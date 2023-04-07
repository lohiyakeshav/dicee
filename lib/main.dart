import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 5,
            title: const Center(
              child: Text(
                "Dicee",
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            backgroundColor: Colors.purple,
          ),
          backgroundColor: Colors.purple,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 100,
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
              DicePageState(),
              SizedBox(
                height: 100,
                width: 150,
                child: Divider(
                  color: Colors.white,
                ),
              ),
            ],
          )
      ),
    );
  }
}

class DicePageState extends StatefulWidget {
  const DicePageState({Key? key}) : super(key: key);

  @override
  State<DicePageState> createState() => _DicePageStateState();
}

class _DicePageStateState extends State<DicePageState> {
  int left = 1;
  int right = 1;

  void ChangeDiceFace() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeDiceFace();
              },
              child: Image.asset('images/dice$left.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  ChangeDiceFace();
                },
                child: Image.asset('images/dice$right.png')),
          ),
        ],
      ),
    );
  }
}
