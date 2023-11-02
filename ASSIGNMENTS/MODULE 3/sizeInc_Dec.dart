import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySizeIncDec extends StatefulWidget {
  const MySizeIncDec({super.key});

  @override
  State<MySizeIncDec> createState() => _MySizeIncDecState();
}

class _MySizeIncDecState extends State<MySizeIncDec> {
  double count = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Size Increse and Decreas Example")),
      body: Column(children: [
        Text(
          "Abhayraj Rathod",
          style: GoogleFonts.prompt(textStyle: TextStyle(fontSize: count)),
        ),
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (count > 0) {
                      count--;
                    }
                  });
                },
                child: Icon(Icons.remove),
              ),
              Text("$count",
                  style:
                      GoogleFonts.prompt(textStyle: TextStyle(fontSize: 30))),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
