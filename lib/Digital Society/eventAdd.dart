import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/eventModel.dart';
import 'package:digitalsociety/Digital%20Society/eventDisp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

//https://grateful-amperages.000webhostapp.com/eventDelete.php


Future<void> addEvent(String? titleE, descE, dateE) async {
  final response = await http.post(
      Uri.parse("https:grateful-amperages.000webhostapp.com/eventRegister.php"),
      body: {'titleE': titleE, 'descE': descE, 'dateE': dateE});

    if (response.statusCode == 200) {
      EventModel.fromJson(jsonDecode(response.body));
      Get.snackbar("Event", "Event Add Successfully");
      Get.to(MyEventDisplayEx());
    } else{
      throw Exception("Failed Event Api");
    }
}

class MyEventAdd extends StatefulWidget {
  const MyEventAdd({super.key});

  @override
  State<MyEventAdd> createState() => _MyEventAddState();
}

class _MyEventAddState extends State<MyEventAdd> {
  TextEditingController _titleEController = TextEditingController();
  TextEditingController _descEController = TextEditingController();
  TextEditingController _dateEController = TextEditingController();
  final _forKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateEController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Container(
                height: 200,
                width: double.maxFinite,
                child: Lottie.network(
                    "https://lottie.host/b7523684-7418-49fe-b02c-c98f62eb0d8d/Q3W1NlaPK0.json")),
          ),
          Form(
              key: _forKey,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 300.0, left: 30, right: 30),
                  child: Column(children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Title is Required";
                        }
                        return null;
                      },
                      controller: _titleEController,
                      decoration: InputDecoration(
                          hintText: "Enter the Title",
                          labelText: "Title",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Description is Required";
                        }
                        return null;
                      },
                      controller: _descEController,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: "Enter the Description",
                        labelText: "Description",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Date is Required";
                        }
                        return null;
                      },
                      controller: _dateEController,
                      decoration: InputDecoration(
                          hintText: "Enter the Date",
                          border: OutlineInputBorder()),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2050));

                        if (pickedDate != null) {
                          String formateDate =
                              DateFormat("dd-MM-yyyy").format(pickedDate);
                          setState(() {
                            _dateEController.text = formateDate;
                          });
                        }
                      },
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    // GradientButton(
                    //   colors: [Colors.purple, Colors.deepPurpleAccent],
                    //   height: 50,
                    //   width: 200,
                    //   radius: 25,
                    //   gradientDirection: GradientDirection.leftToRight,
                    //   textStyle: TextStyle(color: Colors.white),
                    //   text: "Submit",
                      
                    //   onPressed: () {
                        // setState(() {
                          // if (_forKey.currentState!.validate()) {
                          //   setState(() {
                          //     addEvent(_titleEController.text, _descEController.text, _dateEController.text);
                          //   });
                          // }
                    //     });
                    //   },
                    // ),
                    
                    InkWell(
                      onLongPress: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyEventDisplayEx(),));
                      },
                      onTap: () {
                        if (_forKey.currentState!.validate()) {
                            setState(() {
                              addEvent(_titleEController.text, _descEController.text, _dateEController.text);
                            });
                          }

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        height: 40,width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(colors:[Colors.purple, Colors.deepPurpleAccent],begin: Alignment.topLeft,end: Alignment.bottomRight,tileMode: TileMode.mirror )
                        ),
                        child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.center,),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}
