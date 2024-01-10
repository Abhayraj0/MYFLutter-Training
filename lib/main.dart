import 'package:digitalsocietyapp/Digital%20Society/complaintAdd.dart';
import 'package:digitalsocietyapp/Digital%20Society/dashborM.dart';
import 'package:digitalsocietyapp/Digital%20Society/dashbord.dart';
import 'package:digitalsocietyapp/Digital%20Society/displayMem.dart';
import 'package:digitalsocietyapp/Digital%20Society/eventAdd.dart';
import 'package:digitalsocietyapp/Digital%20Society/memberScreen.dart';
import 'package:digitalsocietyapp/Digital%20Society/noticeAddrgister.dart';
import 'package:digitalsocietyapp/Digital%20Society/registerM.dart';
import 'package:digitalsocietyapp/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
      bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
    ),
        useMaterial3: true,
      ),
      home: MyMemberDashbord(),
    );
  }
}


