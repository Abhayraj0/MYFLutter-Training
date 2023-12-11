import 'package:flutter/material.dart';

class MyRadioChangeColor extends StatefulWidget {
  const MyRadioChangeColor({super.key});

  

  @override
  State<MyRadioChangeColor> createState() => _MyRadioChangeColorState();
}
// enum MyColor {red, blue, yellow, green}
class _MyRadioChangeColorState extends State<MyRadioChangeColor> {
  // MyColor myColor = MyColor.blue;
  int selectedColor = 0;
  List<Color> colorOptions = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.purple,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Change Colors Exmple"),
      ),
      body: Column(children: [
        ListTile(
          title: Text("Red"),
          selectedColor: Colors.red,
          trailing: Radio(groupValue: selectedColor,
          value: 0,
          onChanged: (value) {
            setState(() {
              selectedColor =value!;
            });
          },),
        
        ),
        ListTile(
          title: Text("Green"),
          selectedColor: Colors.green,
          trailing: Radio(groupValue: selectedColor,
          value: 1,
          onChanged: (value) {
            setState(() {
              selectedColor =value!;
            });
          },),
        ),
        ListTile(
          title: Text("blue"),
          selectedColor: Colors.blue,
          trailing: Radio(groupValue: selectedColor,
          value: 2,
          onChanged: (value) {
            setState(() {
              selectedColor =value!;
            });
          },),
        ),
        ListTile(
          title: Text("yello"),
          selectedColor: Colors.yellow,
          trailing: Radio(groupValue: selectedColor,
          value: 3,
          onChanged: (value) {
            setState(() {
              selectedColor =value!;
            });
          },),
        ),
        ListTile(
          title: Text("Purple"),
          selectedColor: Colors.purple,
          trailing: Radio(groupValue: selectedColor,
          value: 4,
          onChanged: (value) {
            setState(() {
              selectedColor =value!;
            });
          },),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 300,
          width: 300,
          color: colorOptions[selectedColor],
        )
      ]),
    );
  }
}
