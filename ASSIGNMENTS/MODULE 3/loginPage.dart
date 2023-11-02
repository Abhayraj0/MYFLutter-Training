import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Stack(children: [
        Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Text("Login Page",
              style:
                  GoogleFonts.benne(fontSize: 50, fontWeight: FontWeight.w600)),
        ),
        SingleChildScrollView(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.4,
              left: 40,
              right: 40),
          child: Column(children: [
            TextFormField(
              controller: _emailController,
              cursorColor: Colors.deepPurpleAccent,
              cursorHeight: 30,
              decoration: InputDecoration(
                hintText: "Enter the Email",
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passwordController,
              cursorColor: Colors.deepPurpleAccent,
              cursorHeight: 30,
              decoration: InputDecoration(
                hintText: "Enter the Password",
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.7),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    animationDuration: Duration(seconds: 10),
                    elevation: 10,
                    shadowColor: Color.fromARGB(152, 39, 196, 213),
                  ),
                  child: Text(
                    'Forget Password',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20), primary: Colors.yellow[50]),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "I've not an account",
                  style: GoogleFonts.balooTamma2(fontSize: 30),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.balooTamma2(
                          fontSize: 20, color: Colors.blue),
                    ))
              ],
            )
          ]),
        ),
      ]),
    );
  }
}
