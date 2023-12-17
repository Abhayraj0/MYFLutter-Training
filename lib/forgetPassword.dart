import 'package:flutter/material.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  bool _obscureText= true;
  bool _obscureText1= true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.png'),
        fit: BoxFit.fill)
      ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,),
         backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container( 
              padding: EdgeInsets.only(left: 25, top: 120),
              child: Text("Reset Password", style: TextStyle(fontSize: 25,
            color: Colors.white,
            ),),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5,
              left: 35, right: 35),
              child: Column(
                  children: [
                    TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black),),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                        hintText: '************',
                        hintStyle: TextStyle(color: Colors.amber),
                        prefixIcon: Icon(Icons.password_outlined),
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              _obscureText =! _obscureText;
                            });
                          },
                          child: Icon(_obscureText ?
                          Icons.visibility_rounded : Icons.visibility_off_rounded),
                        )
                      ),
                    ),
                    SizedBox(
                      height: 20 ,
                    ),
                    TextField(
                      obscureText: _obscureText1,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.black),),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.blue)
                          ),
                        hintText: '************',
                        hintStyle: TextStyle(color: Colors.amber),
                        prefixIcon: Icon(Icons.password_rounded),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              _obscureText1 =! _obscureText1;
                            });
                          },
                          child: Icon(_obscureText1 ?
                          Icons.visibility_sharp : Icons.visibility_off_sharp),
                        )
                      ),
                    ),
                    SizedBox(
                        height: 50,
                    ),
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, 'login');
                      },
                      child: Text('Continue',
                      style: TextStyle(fontSize: 34,color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amberAccent),
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(side: BorderSide(color: Colors.black))
                        ),
                      ),
                      ),
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}