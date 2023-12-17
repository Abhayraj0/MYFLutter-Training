import 'package:flutter/material.dart';
import 'package:login/Offline%20DataBase/Model/UserModel.dart';
import 'package:login/Offline%20DataBase/service.dart';
import 'package:login/home_screen.dart';
import 'package:login/phone_verification.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool _obscureText = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 110),
              child: Text(
                'Login',
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
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Fill the email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.blue)),
                      hintStyle: TextStyle(color: Colors.amber),
                      hintText: 'abc@gmail.com',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please Fill the password";
                      }
                      return null;
                    },
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue)),
                        hintStyle: TextStyle(color: Colors.amber),
                        hintText: '**************',
                        prefixIcon: Icon(Icons.password_outlined),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                _obscureText = !_obscureText;
                              },
                            );
                          },
                          child: Icon(_obscureText
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'forgetPassword');
                        },
                        child: new Text(
                          'Forget Passowrd',
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black54,
                        child: IconButton(
                            color: Colors.white,
                            onPressed: () {

                              setState(() async {
                                var _userModel = UserModelLO();
                                var _userService = UserService();

                                _userModel.email = _emailController.text;
                                _userModel.pass = _passwordController.text;

                                var result= await _userService.readUser();
                                print(result);
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          PhoneVerification()));
                              });

                             
                            },
                            icon: Icon(Icons.play_arrow_sharp)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "------------------ or ------------------",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.g_mobiledata_rounded,
                          size: 35,
                          color: Colors.blue,
                        ),
                        label: Text('Continue with Google',
                            style: TextStyle(fontSize: 20)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext Context) =>
                                      Home_Screen()));
                        },
                        label: Text(
                          'Continue with Facebook',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        icon: Icon(
                          Icons.facebook_rounded,
                          size: 35,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          onPrimary: Colors.black,
                        ),
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
}
