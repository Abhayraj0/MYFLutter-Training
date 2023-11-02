import 'package:flutter/material.dart';

class MyNumber extends StatefulWidget {
  const MyNumber({super.key});

  @override
  State<MyNumber> createState() => _MyNumberState();
}

class _MyNumberState extends State<MyNumber> {
  TextEditingController _numberController = TextEditingController();
  String? result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Order Number'),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context) . size.height * 0.2,
          left: 30,right: 30),
          child: TextField(
            controller: _numberController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter the number",
              labelText: 'Number'
            ),
          ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: () {
          setState(() {
          String? resultA = _numberController.text;
            String? reverseInput = resultA.split('').reversed.join();

              result = reverseInput;

          });
        }, child: Text('Click')),
        SizedBox(height: 30,),
        Text('Your Reverse Order Number is : $result'),
      ]),
    );
  }
}
