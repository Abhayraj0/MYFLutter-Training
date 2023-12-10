import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class My72Second extends StatelessWidget {
  var name;
  My72Second({super.key,@required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title: Text("Show the data in second screen"),),
      body: Center(
        child: Text(name, style: GoogleFonts.inika(fontSize: 45),),
      )
    );
  }
}