import 'package:flutter/material.dart';

class MyInstagrame extends StatelessWidget {
  const MyInstagrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                status(text: 'hello.....!'),
                status(text: 'abh'),
                status(text: 'jack'),
                status(text: 'hack'),
                status(text: 'odoo'),
                status(text: 'tem'),
                status(text: 'emily'),
                status(text: 'wilse'),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            photoShre('Abhyraj'),
            photoShre('Darshan')
          ]),
        ),
      ),
    );
  }

  Widget status({text}) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: CircleAvatar(
            radius: 60.0,
            backgroundColor: Colors.blueGrey,
            child: Image.asset('assets/images/ganesh.png'),
          ),
        ),
        Text(text, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget photoShre(String name) {
    List imageApp = [
      ('black.jpeg'),
      ('cheir.jpeg'),
      ('chili.jpeg'),
      ('cup.jpeg'),
      ('icecrean.png'),
      ('leaves.jpeg'),
      ('ray.jpeg'),
      ('table.jpeg'),
      ('watch.jpg')
    ];

    return Container(
      decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(
              width: 2, color: Colors.black, style: BorderStyle.solid),
          boxShadow: [
            BoxShadow(
                color: Colors.red,
                offset: Offset(4.0, 4.0),
                blurRadius: 10,
                spreadRadius: 5,
                blurStyle: BlurStyle.solid)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 35,
                  child: Image.asset('assets/images/ganesh.png'),
                ),
              ),
              Spacer(
                flex: 4,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 30),
              ),
              Spacer(
                flex: 30,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              border: Border.all(
                  width: 2, color: Colors.black, style: BorderStyle.solid),
            ),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                      height: 100,
                      width: 100,
                      child: Image.asset('assets/images/$imageApp[index]')),
                );
              },
              itemCount: imageApp.length,
              separatorBuilder: (context, index) {
                return Divider(
                  height: 10,
                  thickness: 2,
                );
              },
            ),
            height: 400,
            width: 400,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
              IconButton(onPressed: () {}, icon: Icon(Icons.comment_rounded)),
              IconButton(onPressed: () {}, icon: Icon(Icons.telegram_sharp)),
              Spacer(
                flex: 1,
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.collections_rounded)),
            ],
          )
        ],
      ),
    );
  }
}
