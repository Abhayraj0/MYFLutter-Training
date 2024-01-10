import 'dart:convert';

import 'package:digitalsocietyapp/Digital%20Society/Model%20All/memberModel.dart';
import 'package:digitalsocietyapp/Digital%20Society/dashborM.dart';
import 'package:digitalsocietyapp/Digital%20Society/registerM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart' as http;

class MyMemberLogin extends StatefulWidget {
  const MyMemberLogin({super.key});

  @override
  State<MyMemberLogin> createState() => _MyMemberLoginState();
}

class _MyMemberLoginState extends State<MyMemberLogin> {
  Future<void> loginMember(String? email, password) async {
    final response = await http.post(
        Uri.parse(
            "https://grateful-amperages.000webhostapp.com/loginMember.php"),
        body: {'email': email, 'password': password});

    List jsonRe = jsonDecode(response.body);
    if (jsonRe.isEmpty) {
      Get.snackbar("Login", "Login Failed, Please try agin");
    } else {
      if (response.statusCode == 200) {
        jsonRe.map((e) => MemberModel1.formJson(e)).toList();
        Get.snackbar("Login", "Login Successfully",
            backgroundGradient: LinearGradient(colors: Colors.primaries));
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyMemberDashbord(),
            ));
      } else {
        throw Exception("Failed Api");
      }
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password",
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 0,
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
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          loginMember(
                              _emamilConteroller.text, _passConteroller.text);
                        }
                      });
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I've not accounts",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyRegisterMem(),
                                ));
                          },
                          child:
                              Text("Sign Up", style: TextStyle(fontSize: 20)))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
