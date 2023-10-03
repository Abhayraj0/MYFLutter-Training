import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text('Home page',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.tealAccent,
        elevation: 0,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            color: Colors.red,
            height: 200,
            width: double.infinity,
          ),
          SizedBox(height: 10,),

          Row(
            
            children: [
              
              Container(
                color: Colors.blue,
                height: 100,
                width: 200,
              ),
              Spacer(flex: 10,),
              Container(
                color: Colors.blue,
                height: 100,
                width: 200,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            
            children: [
              
              Container(
                color: Colors.blue,
                height: 100,
                width: 200,
              ),
              Spacer(flex: 10,),
              Container(
                color: Colors.blue,
                height: 100,
                width: 200,
              ),
            ],
          ),
           SizedBox(height: 10,),
          Row(
            
            children: [
              
              Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
              Spacer(flex: 10,),
              Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
              Spacer(flex: 10,),
              Container(
                color: Colors.amber,
                height: 100,
                width: 100,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            
            children: [
              
              Container(
                color: Colors.amber,
                height: 50,
                width: 100,
              ),
              Spacer(flex: 10,),
              Container(
                color: Colors.amber,
                height: 50,
                width: 100,
              ),
              Spacer(flex: 10,),
              Container(
                color: Colors.amber,
                height: 50,
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
