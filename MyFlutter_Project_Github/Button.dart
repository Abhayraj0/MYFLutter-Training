import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Example"),
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  
            Container(
              child: TextButton(
                child: Text("Text Button"),
                onPressed: () {
                  print("Text");
                },
                onLongPress: () {
                  print("Text ffff");
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text("Text Button"),
                onPressed: () {
                  print("Text");
                },
                onLongPress: () {
                  print("Text ffff");
                },
              ),
            ),
            Container(
              child: OutlinedButton(
                child: Text("Text Button"),
                onPressed: () {
                  print("Text");
                },
                onLongPress: () {
                  print("Text ffff");
                },
              ),
            ),
            Image.network('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg'),
           // Image.asset('assets/images/ganesh.png',width: 200,height: 200,),
            //Image.asset('assets/images/pixbaby.jpeg',height: 200,width: 200,),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            //       Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.black,
            //   height: 500,
            //   width: 500,
            // ),
            // Container(
            //   color: Colors.yellowAccent,
            //   height: 500,
            //   width: 500,
            // ),
                  ],
                ),
          ),
      
      ),
    );
  }
}
