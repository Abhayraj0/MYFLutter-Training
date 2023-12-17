import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/home_screen.dart';
//import 'package:login/login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context, MaterialPageRoute(
          builder: (context) => Home_Screen()));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(color: Colors.amber,
        child: Center(
          child: Text('Hello....!',
          style: TextStyle(
            fontSize: 40,
            color: Colors.white
          ),),
          
      ),
    ));
  }
}