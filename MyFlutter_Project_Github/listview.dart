import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    List imageApp = [
      'assets/images/icecream.png'
      // 'assets/images/cup.jpg',
      // 'assets/images/leaves.jpg',
      // 'assets/images/pineple.jpg',
      // 'assets/images/cheir.jpg',
      // 'assets/images/propo.jpg',
      // 'assets/images/table.jpg',
      // 'assets/images/wood.jpg',
      // 'assets/images/black.jpg',
      'assets/images/propo.jpeg'
    ];

    // var c1 = [
    //   'Abhayraj',
    //   'milan',
    //   'Tushar',
    //   'Harsh',
    //   'Mehul',
    //   'Pranjal',
    //   'Yug',
    //   'Devang'
    // ];
    return Scaffold(
      appBar: AppBar(title: Text('List view Example')),
      body:

  Image.asset('assets/images/icecream.png')

          //
          //ListView.builder(itemBuilder: (context, index) {
          //   return Image.asset(imageApp[index]);
          // },
          // itemCount: imageApp.length,
          // )

          //       ListView.separated(itemBuilder: (context, index) {
          //   return Text(c1[index]);
          // }, separatorBuilder: (context, index) {
          //   return Divider(thickness: 2,
          //   height: 50,
          //   color: Colors.amber,);

          // }, itemCount: c1.length),

      //     ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Container(
      //         margin: EdgeInsets.all(10),
      //         child: Column(
      //           children: [
      //             Image.asset(imageApp[index]),
      //             // Text(
      //             //   c1[index],
      //             //   style: TextStyle(fontSize: 30),
      //             // ),
      //           ],
      //         ));
      //   },
      //   itemCount: imageApp.length,
        
      // ),
    );
  }
}
