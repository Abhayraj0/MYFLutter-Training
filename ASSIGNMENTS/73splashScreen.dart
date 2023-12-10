import 'package:flutter/material.dart';
import 'package:myflutterapplcation/Assignment%20Modula4/aletDialog62.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigatSecond();
  }
  void navigatSecond() async {
    await Future.delayed(Duration(seconds: 4), (){});

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyAlertDialogButton(),));
  
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
