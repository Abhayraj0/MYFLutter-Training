import 'package:flutter/material.dart';
import 'package:myflutterapplcation/Assignment%20Modula4/76_secon.dart';

class My76Example extends StatefulWidget {
  const My76Example({super.key});

  @override
  State<My76Example> createState() => _My76ExampleState();
}

class _My76ExampleState extends State<My76Example> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();

  String? sum = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tow number Sum Example"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextField(
              controller: _num1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the number 1",
                labelText: "Number 1",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextField(
              controller: _num2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the number 2",
                labelText: "Number 2",
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                int nu1 = int.parse(_num1.text);
                int nu2 = int.parse(_num2.text);
                sum = (nu1 + nu2).toString();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => My76Second(number: sum),
                    ));
              },
              child: Text("Submit")),
        ],
      ),
    );
  }
}
