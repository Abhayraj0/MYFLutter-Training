import 'package:flutter/material.dart';

class My76Second extends StatelessWidget {
  var number;
  My76Second({super.key, @required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Answer show the frist screen")),
      body: Center(
        child: Text(number,style: TextStyle(fontSize: 60),),
      ),
    );
  }
}