import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});


  @override
  Widget build(BuildContext context) {
  var naem = 'hello';

    return Scaffold(
      appBar: AppBar(
        title: Text("Container Example",style: TextStyle(color: Colors.amber),),
      ),
      body: Row(
        children: [
          //  Padding(padding: EdgeInsets.all(20)),
          Container(
            margin: EdgeInsets.all(20),
             child: Text(naem),

            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              border: Border.all(
                  width: 5, color: Colors.redAccent, style: BorderStyle.none),
            ),
            height: 300,
            width: 300,
          ),
          Container(
            // margin: EdgeInsets.all(50),
            height: 300,
            width: 300,
           child: Image.asset('assets/images/icecream.png'),
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                  width: 5, color: Colors.redAccent, style: BorderStyle.none),
            ),
          ),
        ],
      ),
    );
  }
}
