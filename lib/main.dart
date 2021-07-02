import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Pergunte qualquer coisa'),
          backgroundColor: Colors.green,
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                print('cliquei');
                ball = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ball.png'),
          ),
        ),
      ),
    );
  }
}
