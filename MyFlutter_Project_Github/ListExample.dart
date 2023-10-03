import 'package:flutter/material.dart';

class MyLi extends StatefulWidget {
  const MyLi({super.key});

  @override
  State<MyLi> createState() => _MyLiState();
}

class _MyLiState extends State<MyLi> {
  List imageA = [
    ('black.jpeg'),
    ('cheir.jpeg'),
    ('chili.jpeg'),
    ('cup.jpeg'),
    ('icecream.png'),
    ('leaves.jpeg'),
    ('ray.jpeg'),
    ('table.jpeg'),
    ('watch.jpg')
  ];
  List nameA = [
    'Abhayraj',
    'Milan',
    'Tushar',
    'Mehul',
    'Darshan',
    'Harsh',
    'Pranjal',
    'Anirudh',
    'Virendr'
  ];
  List cityA = [
    'Ahmedabad',
    'Surat',
    'Bhavnagar',
    'Amreli',
    'Rajkot',
    'Dwarka',
    'Jamngar',
    'Gandhinagar',
    'Div'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Scaffold(
        appBar: AppBar(
          title: Text('List Example Their..'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                textColor: Colors.tealAccent,
                leading: Container(
                  color: Colors.black12,
                  height: 70,
                  width: 50,
                  child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/${imageA[index]}'),),
                ),
                title: Text(nameA[index]),
                subtitle: Text(cityA[index]),
                trailing: Icon(Icons.add),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 70,
                thickness: 5,
                color: Colors.amber,
              );
            },
            itemCount: nameA.length),
      ),
    );
  }
}
