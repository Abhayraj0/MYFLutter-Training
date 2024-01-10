import 'dart:convert';

import 'package:digitalsocietyapp/Digital%20Society/Model%20All/memberModel.dart';
import 'package:digitalsocietyapp/Digital%20Society/dashbord.dart';
import 'package:digitalsocietyapp/Digital%20Society/loginM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;


  Future<MemberModel1> addData(String? name,contact,houseno,email,password) async {
    final response = await http.post(Uri.parse("https://grateful-amperages.000webhostapp.com/registerMember.php"),body: {
      'name': name,
      'contact' : contact,
      'houseno' : houseno,
      'email' : email,
      'password' : password
    });

    if (response.statusCode == 200) {
      return MemberModel1.formJson(jsonDecode(response.body));
      
    } else {
      throw Exception("Failled your api");
    }
  }


class MyRegisterMem extends StatefulWidget {
  const MyRegisterMem({super.key});

  @override
  State<MyRegisterMem> createState() => _MyRegisterMemState();
}

class _MyRegisterMemState extends State<MyRegisterMem> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _contactController = TextEditingController();
  TextEditingController _houseController = TextEditingController();
  TextEditingController _emamilConteroller = TextEditingController();
  TextEditingController _passConteroller = TextEditingController();
  TextEditingController _ConPassConteroller = TextEditingController();

  bool isVisible = false;
  bool isVisible1 = false;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            Container(
                alignment: Alignment.topCenter,
                child: Image.network(
                  "https://i.pinimg.com/564x/36/f0/e7/36f0e76abd4a79445d4914b5d9c72bf3.jpg",
                  fit: BoxFit.fill,
                  height: 250,
                )),
            Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.43,
                      left: MediaQuery.of(context).size.width * 0.04,
                      right: MediaQuery.of(context).size.width * 0.04),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Name is Required";
                            } else if (value.length < 3) {
                              return "name length 3 Required";
                            }

                            return null;
                          },
                          controller: _nameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter the Name",
                              labelText: "Name",
                              prefixIcon: Icon(Icons.person)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Contact is Required";
                            } else if (value.length < 10) {
                              return "phone number length 10 is Required";
                            }

                            return null;
                          },
                          controller: _contactController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter the Contact",
                              labelText: "Contact",
                              prefixIcon: Icon(Icons.phone_android)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "House No is Required";
                            }
                            return null;
                          },
                          controller: _houseController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter the House No",
                              labelText: "House No",
                              prefixIcon: Icon(Icons.house)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                           validator: (value) {
                            if (value!.isEmpty) {
                              return "Email is Required";
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
                                return "Conform Password is Required";
                              } else if (value.length < 6) {
                                return "password length is 6 Required";
                              } return null;
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
                          height: 20,
                        ),
                        TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Conform Password is Required";
                              } else if (_passConteroller.text !=
                                  _ConPassConteroller.text) {
                                return "your password is not same";
                              }
                              return null;
                            },
                            obscureText: !isVisible1,
                            controller: _ConPassConteroller,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Enter the Conform Password",
                                labelText: "Conform Password",
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isVisible1 = !isVisible1;
                                      });
                                    },
                                    icon: Icon(isVisible1
                                        ? Icons.visibility
                                        : Icons.visibility_off)))),
                        SizedBox(
                          height: 40,
                        ),
                        GradientButton(
                          colors: [Colors.purple, Colors.deepPurpleAccent],
                          height: 50,
                          width: 200,
                          radius: 25,
                          gradientDirection: GradientDirection.leftToRight,
                          textStyle: TextStyle(color: Colors.white),
                          text: "Register",
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState!.validate()) {
                                addData(_nameController.text, _contactController.text, _houseController.text, _emamilConteroller.text, _passConteroller.text);
                                Navigator.push(context, MaterialPageRoute(builder: (context) => MyChairmanDashbord(),));
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
                              "I've accounts",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MyMemberLogin(),
                                      ));
                                },
                                child: Text("Sign In",
                                    style: TextStyle(fontSize: 20)))
                          ],
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
