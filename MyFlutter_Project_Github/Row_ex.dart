import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row and Column Example"),
      ),
      body: Column(
        children: [
         Container(
          height: 100,
          width: double.infinity,
          color: Colors.amber,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("My"),
              Text("Flutter"),
              Text("Example"),
            ],
          ),
         ),
         Container(
          height: 500,
          width: 500,
          color: Colors.amber,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("My"),
              Text("Flutter"),
              Text("Example"),
            ],
          ),
         )
        ],
      ),
    );
  }
}