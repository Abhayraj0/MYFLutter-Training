import 'package:flutter/material.dart';
import 'package:todoapplication/Screen/dashboardScreen.dart';
import 'package:todoapplication/Screen/noteadd.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MyDashboardScreen(),
    );
  }
}
