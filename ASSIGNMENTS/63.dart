import 'package:flutter/material.dart';

class My63Example extends StatefulWidget {
  const My63Example({super.key});

  @override
  State<My63Example> createState() => _My63ExampleState();
}

class _My63ExampleState extends State<My63Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog Example"),
      ),
      body: Column(
        children: [
          Container(
            height: 120,
            width: 300,
            child: TextButton(
              onPressed: () {
                myAlert();
              },
              child: Text("Alert Dialog show"),
            ),
          ),
        ],
      ),
    );
  }

  myAlert() {
    AlertDialog alertDialog1 = AlertDialog(
      title: Text("show button"),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Positive",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                backgroundColor: Colors.cyanAccent,
              ));
            },
            child: Text("Positive")),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Nagative",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                backgroundColor: Colors.cyanAccent,
              ));
            },
            child: Text("Nagative")),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Neutral",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                backgroundColor: Colors.cyanAccent,
              ));
            },
            child: Text("Neutral")),
      ],
      elevation: 40,
      shadowColor: Colors.orangeAccent,
      scrollable: true,
    );
    showDialog(
      context: context,
      builder: (context) => alertDialog1,
    );
  }
}
