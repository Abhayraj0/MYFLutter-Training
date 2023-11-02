import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyImageTextView extends StatelessWidget {
  MyImageTextView({super.key});

  List<String> name = ['Text View', 'Text View', 'Text View', 'Text View'];
  List image = [
    Image.asset('assets/images/propo.jpeg'),
    Image.asset('assets/images/cheir.jpeg'),
    Image.asset('assets/images/chili.jpeg'),
    Image.asset('assets/images/cup.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image and TextView Example")),
      body: Container(
        padding: EdgeInsets.all(25),
        child: GridView.builder(
          itemCount: name.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Card(
              child: Stack(alignment: Alignment.topCenter, children: [
                Container(
                  height: 200,
                  width: 200,
                  child: image[index],
                ),
                Container(
                    alignment: Alignment.center,
                    child: Text(name[index],
                        style: TextStyle(fontSize: 20, color: Colors.white))),
              ]),
            );
          },
        ),
      ),
    );
  }
}
