
import 'package:digitalsociety/Digital%20Society/chairman.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MySplashScreenExample extends StatefulWidget {
  const MySplashScreenExample({super.key});

  @override
  State<MySplashScreenExample> createState() => _MySplashScreenExampleState();
}

class _MySplashScreenExampleState extends State<MySplashScreenExample> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenGo();
  }

  void splashScreenGo() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyChairmanLogin(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Lottie.network('https://lottie.host/654b9610-dc12-4093-8765-ebf3036c9c37/8HJUeNLREW.json',
                    fit: BoxFit.cover, height: 400, width: 400, repeat: true)),
            Center(
                child: Lottie.network('https://lottie.host/05027ef3-9dc9-4dfc-bd86-c6ee89a1fd73/RQRiknh1y7.json',
                    fit: BoxFit.cover, height: 200, width: 200, repeat: true))
          ],
        ),
      ),
    );
  }
}
