import 'package:flutter/material.dart';


void main() => runApp(piano());

class piano extends StatefulWidget {
  @override
  State<piano> createState() => _pianoState();
}

class _pianoState extends State<piano> {

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: color,
        ),
        onTap: () {
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
