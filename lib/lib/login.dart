import 'package:flutter/material.dart';
import 'package:flutter_gradient_button/flutter_gradient_button.dart';
import 'package:inventorymanagementapp/Database/Model/user.dart';
import 'package:inventorymanagementapp/Database/dbHelper.dart';
import 'package:inventorymanagementapp/dashBord.dart';
import 'package:inventorymanagementapp/register.dart';
import 'package:lottie/lottie.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController _emamilConteroller = TextEditingController();
  TextEditingController _passConteroller = TextEditingController();
  bool isVisible = false;

  final _formKey = GlobalKey<FormState>();
  bool isReg = false;
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
                          return "Password is required";
                        }
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
                      setState(() async {
                        if (_formKey.currentState!.validate()) {
                          var userMo = UsersModel();
                          var userDq = DatabaseDB();
                          userMo.email = _emamilConteroller.text;
                          userMo.password = _passConteroller.text;
                          print("--------------------------------------------");
                          print(userMo.name);
                          print("--------------------------------------------");

                          var resul = await userDq.loginUser(
                              userMo.email, userMo.password);

                          if (resul.length == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                              "Your email and password is invaild..",
                              style: TextStyle(fontSize: 49),
                            )));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyDashBordE(
                                    nameUser: userMo.name,
                                  ),
                                ));
                          }
                        }
                        _emamilConteroller.clear();
                        _passConteroller.clear();
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
                                  builder: (context) => MyRegister(),
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
