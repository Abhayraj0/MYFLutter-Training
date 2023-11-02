import 'package:flutter/material.dart';

class MyBackground extends StatefulWidget {
  const MyBackground({super.key});

  @override
  State<MyBackground> createState() => _MyBackgroundState();
}

class _MyBackgroundState extends State<MyBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Background Color Change")),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber,
        )
      ]),
    );
  }
}