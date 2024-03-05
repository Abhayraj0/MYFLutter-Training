import 'package:flutter/material.dart';

class MyNoteDisplay extends StatelessWidget {
  String? name;
  String? desc;
  MyNoteDisplay({super.key, required this.name, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notice Display"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Flexible(child: Text("$name",style: TextStyle(fontSize: 40),)),
            Divider(),
            Flexible(child: Text("$desc",style: TextStyle(fontSize: 30),)),
          ],
        ),
      ),
    );
  }
}
