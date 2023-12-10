import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlertDialogButton extends StatefulWidget {
  const MyAlertDialogButton({super.key});

  @override
  State<MyAlertDialogButton> createState() => _MyAlertDialogButtonState();
}

class _MyAlertDialogButtonState extends State<MyAlertDialogButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alert Dialog"),
          backgroundColor: Colors.amberAccent,
          elevation: 40,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              aletDialog(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(200, 150),
              backgroundColor: Colors.lightGreen,
              shadowColor: Colors.lightGreen,
              elevation: 40,
            ),
            child: Text(
              "Submit",
              style: GoogleFonts.inconsolata(fontSize: 40),
            ),
          ),
        ));
  }
}

void aletDialog(BuildContext context) {
  AlertDialog alertA = new AlertDialog(
    title: Text("Alert"),
    content: Text("Are you sure, you want to close the app"),
    actions: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Yes')),
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No'))
    ],
  );
  showDialog(context: context, builder: (context) => alertA);
}
