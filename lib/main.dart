// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:login/forgetPassword.dart';
import 'package:login/home_screen.dart';
import 'package:login/login.dart';
import 'package:login/otp_verification.dart';
import 'package:login/phone_verification.dart';
import 'package:login/register.dart';
import 'package:login/splash.dart';
import 'package:login/userScreen.dart';

void main() {
  bool isDark = false;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.amber,
      useMaterial3: true,
      brightness: isDark ? Brightness.dark : Brightness.light
    ),
    initialRoute: 'splash',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'forgetPassword': (context) => forgetPassword(),
      'userScreen' :(context) => UserScreen(),
      'phone_verification' :(context) => PhoneVerification(),
      'splash' :(context) => Splash(),
      'home_screen' :(context) => Home_Screen(),
      'otp_verification' :(context) => MyOtpVerification()
      },
  ));
}


