import 'package:flutter/material.dart';

class MyTextNumber extends StatefulWidget {
  const MyTextNumber({super.key});

  @override
  State<MyTextNumber> createState() => _MyTextNumberState();
}

class _MyTextNumberState extends State<MyTextNumber> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  List number = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("two number value show exmple"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(children: [
          TextField(
            controller: num1,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the number 1",
                labelText: "Number 1"),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter the number 2",
                labelText: "Number 2"),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              int n1 = int.parse(num1.text.toString());
              int n2 = int.parse(num2.text.toString());
              for (var i = n1+1; i < n2; i++) {
                number.add(i);
              }

            });
          }, child: Text("Submit")),
          SizedBox(
            height: 20,
          ),
          Text("$number"),
        ]),
      ),
    );
  }
}
