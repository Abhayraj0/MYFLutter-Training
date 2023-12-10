import 'package:flutter/material.dart';
import 'package:myflutterapplcation/bottom/audio.dart';
import 'package:myflutterapplcation/bottom/gallery.dart';
import 'package:myflutterapplcation/bottom/video.dart';

class MyTabBar71 extends StatefulWidget {
  const MyTabBar71({super.key});

  @override
  State<MyTabBar71> createState() => _MyTabBar71State();
}

class _MyTabBar71State extends State<MyTabBar71> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer Eaxmple "),
        ),
        body: Container(),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(child: Text("Navigation Drawer Eample")),
              ListTile(
                leading: const Icon(Icons.browse_gallery),
                title: const Text("Gallery"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyGalleryApp(),));
                },
              ),
              ListTile(
                leading: const Icon(Icons.audio_file_outlined),
                title: const Text("Audio"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyAudioApp(),));
                },
              ),
              ListTile(
                leading: const Icon(Icons.video_file),
                title: const Text("Video"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyVideoApp(),));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
