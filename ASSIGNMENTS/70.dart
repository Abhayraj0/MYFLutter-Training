import 'package:flutter/material.dart';

class MyNavigation70 extends StatefulWidget {
  const MyNavigation70({super.key});

  @override
  State<MyNavigation70> createState() => _MyNavigation70State();
}

class _MyNavigation70State extends State<MyNavigation70> {
  var item = 0;
  onChang(index) {
    setState(() {
      item = index;
    });
  }

  List<Widget> MyLsit = [
    Image.asset('assets/images/pix.jpeg'),
    Image.asset('assets/images/cheir.jpeg'),
    Image.asset('assets/images/pix.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Navigation Example."),
      ),
      body: MyLsit.elementAt(item),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.browse_gallery),
            backgroundColor: Colors.lime,
            label: "Gallery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.audio_file),
            backgroundColor: Colors.lime,
            label: "Audio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_file),
            backgroundColor: Colors.lime,
            label: "Video",
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: item,
        onTap: onChang,
        backgroundColor: Colors.limeAccent,
      ),
    );
  }
}
