import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRegisterPage extends StatefulWidget {
  const MyRegisterPage({super.key});

  @override
  State<MyRegisterPage> createState() => _MyRegisterPageState();
}

class _MyRegisterPageState extends State<MyRegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _conformPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register Page")),
      body: Stack(children: [
        Container(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Text("Register Page",
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
              controller: _nameController,
              cursorColor: Colors.deepPurpleAccent,
              cursorHeight: 30,
              decoration: InputDecoration(
                hintText: "Enter the Name",
                labelText: "Name",
                labelStyle: TextStyle(fontSize: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
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
            TextFormField(
              controller: _conformPassController,
              cursorColor: Colors.deepPurpleAccent,
              cursorHeight: 30,
              decoration: InputDecoration(
                hintText: "Enter the Conform Password",
                labelText: "Conform Password",
                labelStyle: TextStyle(fontSize: 20),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(
              height: 20,
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
                    'Register',
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
                  "I've an account",
                  style: GoogleFonts.balooTamma2(fontSize: 30),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign In",
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