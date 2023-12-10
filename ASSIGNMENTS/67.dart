import 'package:flutter/material.dart';

class My67Example extends StatefulWidget {
  const My67Example({super.key});

  @override
  State<My67Example> createState() => _My67ExampleState();
}

class _My67ExampleState extends State<My67Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Optien menu Example"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Profile")),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("Logout"))
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("My profile menu selected");
            } else if(value == 1){
              print("My Logout menu selected");
            }
          },)
        ],
      ),
      body: Container(),
    );
  }
}
