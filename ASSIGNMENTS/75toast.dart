import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySanckBar75 extends StatefulWidget {
  const MySanckBar75({super.key});

  @override
  State<MySanckBar75> createState() => _MySanckBar75State();
}

List<String> flutterLifecycle = [
  'createState()',
  'initState()',
  'didChangeDependencies()',
  'bulid()',
  'didUpdateWidget()',
  'setSate()',
  'deActivate()',
  'dispose()'
];

class _MySanckBar75State extends State<MySanckBar75> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SanckBar Example "),
      ),
      body: ListView.builder(
        itemCount: flutterLifecycle.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${flutterLifecycle[index]}",style: GoogleFonts.zcoolXiaoWei(fontSize: 40),selectionColor: Colors.amber,), backgroundColor: Colors.black,));
            },
            title: Text("${flutterLifecycle[index]}",style: GoogleFonts.zcoolXiaoWei(fontSize: 30),),
          );
        },
      )
    );
  }
}