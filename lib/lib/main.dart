import 'package:flutter/material.dart';
import 'package:inventorymanagementapp/dashBord.dart';
import 'package:inventorymanagementapp/login.dart';
import 'package:inventorymanagementapp/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyLogin(),
    );
  }
}

