import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class MyIm extends StatefulWidget {
  const MyIm({super.key});

  @override
  State<MyIm> createState() => _MyImState();
}

class _MyImState extends State<MyIm> {
  File? imagePi;
  ImagePicker imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker App"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 300,
                width: 300,
                color: Colors.black12,
                child: imagePi == null ?
                Icon(Icons.image,size: 45,)
                    : Image.file(imagePi!,
                fit: BoxFit.fill,)
              ),
              SizedBox(height: 20,),

              ElevatedButton.icon(onPressed: () {
                getImageG();
              },
                  icon: Icon(Icons.image_sharp,size: 40,),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber
                  ),

                  label: Text('Picked Gallery',style: TextStyle(fontSize: 30),)),
             SizedBox(height: 20,),
              ElevatedButton.icon(onPressed: () {
                getImagec();
              },
                  icon: Icon(Icons.camera_enhance,size: 40,),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.amber
                  ),

                  label: Text('Picked Camera',style: TextStyle(fontSize: 30),)),
            ],
          ),
        ),
      ),
    );
  }

   getImageG() async{
    var ima = await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagePi = File(ima!.path);
    });
   }

  getImagec() async{
    var ima = await imagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imagePi = File(ima!.path);
    });
  }
}

