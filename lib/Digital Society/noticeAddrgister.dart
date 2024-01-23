import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/eventModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

Future<void> addNotic(String? titleN,descN,dateN) async
{
  final response = await http.post(Uri.parse(""),body: {
    'titleN' : titleN,
    'descN' : descN,
    'dateN' : dateN,
  });
  if (response.statusCode == 200) {
    EventModel.fromJson(jsonDecode(response.body));
    Get.snackbar("Notice", "Notice add successfully");
    Get.back();
  } else {
    throw Exception("Failed Api");
  }
}

class MyNoticeAdd extends StatefulWidget {
  const MyNoticeAdd({super.key});

  @override
  State<MyNoticeAdd> createState() => _MyNoticeAddState();
}

class _MyNoticeAddState extends State<MyNoticeAdd> {
  TextEditingController _titleNController = TextEditingController();
  TextEditingController _descNController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  final _forKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateController.text = '';
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
                    "https://lottie.host/5083a69f-9b24-428a-8c52-18ea6de07032/Cy2L7BFeK5.json")),
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
                        } return null;
                      },
                      controller: _titleNController,
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
                        } return null;
                      },
                      controller: _descNController,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: "Enter the Description",
                        labelText: "Description",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Date is Required";
                        } return null;
                      },
                      controller: _dateController,
                      decoration: InputDecoration(
                        hintText: "Enter the Date",
                        border: OutlineInputBorder()
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime(2050));

                        if (pickedDate != null) {
                          String formateDate = DateFormat("yyyy-MM-dd").format(pickedDate);
                          setState(() {
                            _dateController.text = formateDate;
                          });
                        }
                      },
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    GradientButton(
                      colors: [Colors.purple, Colors.deepPurpleAccent],
                      height: 50,
                      width: 200,
                      radius: 25,
                      gradientDirection: GradientDirection.leftToRight,
                      textStyle: TextStyle(color: Colors.white),
                      text: "Submit",
                      onPressed: () {
                        setState(() {
                          if (_forKey.currentState!.validate()) {
                              setState(() {
                                addNotic(_titleNController.text, _descNController.text, _dateController.text);
                              });
                          }
                        });
                      },
                    ),
                  ]),
                ),
              ))
        ],
      ),
    );
  }
}
