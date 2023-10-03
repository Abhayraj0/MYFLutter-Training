import 'package:flutter/material.dart';

class MyTestInkwllEx extends StatefulWidget {
  const MyTestInkwllEx({super.key});

  @override
  State<MyTestInkwllEx> createState() => _MyTestInkwllExState();
}

class _MyTestInkwllExState extends State<MyTestInkwllEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ink Welll Example'),
      ),

      body: Column(
        children: [
          ClipOval(
            child: Material(
              color: Colors.blueAccent,
              child: InkWell(
                splashColor: Colors.amber,
                onTap: () {
                  print("Hello my name is abhayrj");
                },
                child: SizedBox(child: Icon(Icons.add),width: 30, height: 30,),
              ),
            ),
          )
        ],
      ),
    );
  }
}