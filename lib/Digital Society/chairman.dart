import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/chairman.dart';
import 'package:digitalsociety/Digital%20Society/dashbord.dart';
import 'package:digitalsociety/Digital%20Society/loginM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

//https://grateful-amperages.000webhostapp.com/chairman.php
class MyChairmanLogin extends StatefulWidget {
  const MyChairmanLogin({super.key});

  @override
  State<MyChairmanLogin> createState() => _MyChairmanLoginState();
}

class _MyChairmanLoginState extends State<MyChairmanLogin> {
  Future<void> loginChairman(String? email, pass) async {
    try {
      final response = await http.post(
          Uri.parse(
              "https://grateful-amperages.000webhostapp.com/chairman.php"),
          body: {'email': email, 'pass': pass});

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        String? id = data[0]['id'];
        String? nameCh = data[0]['nameCh'];
        String? email = data[0]['email'];
        print("---------------------------->>>>>>>>>$nameCh");

        print(id);
        Get.snackbar("Login", "Successfully Login",
            backgroundGradient: LinearGradient(colors: Colors.primaries));
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyChairmanDashbord(
                id: id,
                name: nameCh,
                email: email,
              ),
            ));
      } else {
        throw Exception("Failed Api");
      }
    } catch (e) {
      Get.snackbar("Login", "Failed please try agin");
    }
  }

  TextEditingController _emamilConteroller = TextEditingController();
  TextEditingController _passConteroller = TextEditingController();
  bool isVisible = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.network(
                      "https://lottie.host/0c9d86ec-3563-4498-9ef3-1cae7a3e8cce/bwXt9NIBqk.json",
                      fit: BoxFit.fill,
                      height: 200,
                      repeat: true),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email is required";
                      }
                      return null;
                    },
                    controller: _emamilConteroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter the Email",
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Pasword is required";
                        }
                        return null;
                      },
                      obscureText: !isVisible,
                      controller: _passConteroller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter the Password",
                          labelText: "Password",
                          prefixIcon: Icon(Icons.password),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              icon: Icon(isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off)))),
                  SizedBox(
                    height: 30,
                  ),
                  GradientButton(
                    colors: [Colors.purple, Colors.deepPurpleAccent],
                    height: 50,
                    width: 200,
                    radius: 25,
                    gradientDirection: GradientDirection.leftToRight,
                    textStyle: TextStyle(color: Colors.white),
                    text: "Login",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        loginChairman(
                            _emamilConteroller.text, _passConteroller.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyMemberLogin(),
                            ));
                      },
                      child: Text("Member Login Page"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
