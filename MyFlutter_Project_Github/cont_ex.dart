import 'package:flutter/material.dart';

class MyCont extends StatelessWidget {
  const MyCont({super.key});

  @override
  Widget build(BuildContext context) {
    var hei = 200.0;
    var wid = 200.0;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Container Example" ),
      // ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.amber,
              height: hei,
              width: wid,
            ),
            Container(
              color: Colors.red,
              height: hei,
              width: wid,
            )
          ],
        ),
        Container(
          child: Text("Hello", style: TextStyle(fontSize: 40),),
          color: Colors.green,
          height: hei,
          width: 400,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.amber,
              height: hei,
              width: wid,
            ),
            Container(
              color: Colors.red,
              height: hei,
              width: wid,
            )
          ],
        ),
      ]),
    );
  }
}
