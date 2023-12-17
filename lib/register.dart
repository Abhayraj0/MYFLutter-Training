import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login/Offline%20DataBase/Model/UserModel.dart';
import 'package:login/Offline%20DataBase/service.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool _obscureText = true;
  bool _obscureText1 = true;
  File? file;
  ImagePicker imagePicker = ImagePicker();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _conformPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 70),
              child: Text(
                'Register User',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        color: Colors.white,
                        height: 100,
                        width: 100,
                        child: file == null
                            ? Icon(Icons.image)
                            : Image.file(
                                file!,
                                fit: BoxFit.fill,
                              ),
                      ),
                      Material(
                        //alignment: Alignment.bottomCenter,
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                        child: InkWell(
                          onTap: () {
                            getImageGall();
                          },
                          borderRadius: BorderRadius.circular(20),
                          hoverColor: Colors.red,
                          child: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'Johan',
                        prefixIcon: Icon(
                          Icons.account_circle_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _numberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: '12345678',
                        prefixIcon: Icon(
                          Icons.numbers_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: 'abc@gmail.com',
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                      controller: _passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                        hintStyle: TextStyle(color: Colors.white),
                        hintText: '*************',
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(
                            _obscureText
                                ? Icons.visibility_rounded
                                : Icons.visibility_off_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _conformPassController,
                    obscureText: _obscureText1,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                        hintText: '*********',
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            _obscureText1 = !_obscureText1;
                          }),
                          child: Icon(
                            _obscureText1
                                ? Icons.visibility_rounded
                                : Icons.visibility_off_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black54,
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {
                              var Name = _nameController.text.toString();
                              var Num = _numberController.text.toString();
                              var Email = _emailController.text.toString();
                              var Pass = _passwordController.text.toString();
                              var conPassw = _conformPassController.text;
                              if (Name.isEmpty &&
                                  Num.isEmpty &&
                                  Email.isEmpty &&
                                  Pass.isEmpty &&
                                  conPassw.isEmpty) {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Text(
                                    "Please.! Fill the All Detailes",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  duration: Duration(seconds: 6),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)),
                                ));
                              } else {
                                if (Pass.matchAsPrefix(conPassw) != null) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                      "Your Password is correct",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    duration: Duration(seconds: 6),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                      "Please.! Enter the Same Password",
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    duration: Duration(seconds: 6),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ));
                                }
                                var _userModel = UserModelLO();
                                var _userService = UserService();
                                _userModel.name = Name;
                                _userModel.number = Num;
                                _userModel.email = Email;
                                _userModel.pass = Pass;
                                _userModel.conPass = conPassw;

                                setState(() async {
                                  var result =
                                      await _userService.inserUser(_userModel);
                                  print(result);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text(
                                      result,
                                      style: TextStyle(fontSize: 25),
                                    ),
                                    duration: Duration(seconds: 6),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                  ));
                                });
                              }
                            },
                            icon: Icon(Icons.play_arrow_rounded)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.white)))),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  getImageGall() async {
    var imag = await imagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      file = File(imag!.path);
    });
  }
}
