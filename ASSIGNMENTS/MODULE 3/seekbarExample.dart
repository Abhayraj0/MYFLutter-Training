import 'package:flutter/material.dart';

class MySeeckBarExample extends StatefulWidget {
  const MySeeckBarExample({super.key});

  @override
  State<MySeeckBarExample> createState() => _MySeeckBarExampleState();
}

class _MySeeckBarExampleState extends State<MySeeckBarExample> {
  int mySeekbarValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: mySeekbarValue > 50 ? Colors.amber : Colors.deepOrange,
      child: Column(
        children: [
          Text(
            "$mySeekbarValue",
            style: TextStyle(fontSize: 30),
          ),
          Center(
            child: Slider(
              value: mySeekbarValue.toDouble(),
              min: 1,
              max: 101,
              onChanged: (value) {
                setState(() {
                  mySeekbarValue = value.toInt();
                });
              },
            ),
          ),
        ],
      ),
    ));
  }
}
