import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/complateModel.dart';
import 'package:digitalsociety/Digital%20Society/complaintDisp.dart';
import 'package:digitalsociety/Digital%20Society/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class MyComplaintAdd extends StatefulWidget {
  const MyComplaintAdd({super.key});

  @override
  State<MyComplaintAdd> createState() => _MyComplaintAddState();
}

class _MyComplaintAddState extends State<MyComplaintAdd> {
  Future<void> addComplaint(String? topicC, descC) async {
    final response = await http.post(
        Uri.parse(
            "https://grateful-amperages.000webhostapp.com/complateRegister.php"),
        body: {'topicC': topicC, 'descC': descC});

    if (response.statusCode == 200) {
      ComplaintsModel.fromJson(jsonDecode(response.body));
      Get.snackbar("Complaint", "Complaint Add Successfully");
      Get.back();
    } else {
      throw Exception("Failed the Complaint APi");
    }
  }

  final _topicCController = TextEditingController();
  final _descCController = TextEditingController();

  final _forKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                  height: 200,
                  width: double.maxFinite,
                  child: Lottie.network(
                      "https://lottie.host/8bc742cc-ec21-49f9-8d94-72c44fe03dad/gdcgod1r7u.json")),
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
                            return "Topics is Required";
                          }
                          return null;
                        },
                        controller: _topicCController,
                        decoration: InputDecoration(
                            hintText: "Enter the Topics",
                            labelText: "Topics",
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
                        controller: _descCController,
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
                              addComplaint(_topicCController.text.toString(),
                                  _descCController.text.toString());
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyChairmanDashbord(),));
                            }
                          });
                        },
                      ),
                    ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
