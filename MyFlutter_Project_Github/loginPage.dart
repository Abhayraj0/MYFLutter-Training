// ignore: file_names
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/pix.jpeg'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text('Login Form'),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(alignment: Alignment.topCenter, children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.1, right: 50),
            child: Text(
              'Welcome',
              style: TextStyle(fontSize: 50, color: Colors.purpleAccent),
            ),
          ),
          SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  left: 40,
                  right: 40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.black,
                              style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, style: BorderStyle.solid)),
                      prefixIcon: Icon(Icons.email_sharp),
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.black,
                              style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, style: BorderStyle.solid)),
                      prefixIcon: Icon(Icons.password_sharp),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Row(
                      children: [
                         Checkbox(
                          value: isChecked,
                          activeColor: Colors.amber,
                          onChanged: (newBool) {
                            setState(() { 
                              isChecked = newBool;
                            });
                          }),
                      Text('Remembar me',style: TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                     ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Passowrds',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
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
                            onPressed: () {},
                            icon: Icon(Icons.play_arrow_sharp)),
                      )
                    ],
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
