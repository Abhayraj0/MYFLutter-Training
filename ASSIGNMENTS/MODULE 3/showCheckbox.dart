import 'package:flutter/material.dart';

class MyCheckShow extends StatefulWidget {
  const MyCheckShow({super.key});

  @override
  State<MyCheckShow> createState() => _MyCheckShowState();
}

class _MyCheckShowState extends State<MyCheckShow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Show Value"),
      ),
      body: Column(
        children: [
          Center(
            child: Checkbox(
                value: this.isChecked,
                onChanged: (value) {
                  setState(() {
                    this.isChecked = value!;
                  });
                }),
          ),
          if (isChecked) Text("Show the Data"),
        ],
      ),
    );
  }
}
