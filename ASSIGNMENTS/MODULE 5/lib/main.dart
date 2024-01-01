
import 'package:flutter/material.dart';
import 'package:mysqfliteassignment/Screen/listDataShow.dart';
import 'package:mysqfliteassignment/Screen/regiser.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        datePickerTheme: DatePickerThemeData(backgroundColor: Colors.orangeAccent)
      ),
      home: MyListDataShowAss(),
    );
  }
}