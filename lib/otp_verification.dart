import 'package:flutter/material.dart';

class MyOtpVerification extends StatefulWidget {
  const MyOtpVerification({super.key});

  @override
  State<MyOtpVerification> createState() => _MyOtpVerificationState();
}

class _MyOtpVerificationState extends State<MyOtpVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Otp page',
              style: TextStyle(fontSize: 30, color: Colors.white, shadows: [
                Shadow(color: Colors.red, offset: Offset(2.0, 4.0))
              ]),
              textAlign: TextAlign.center),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.05),
        child: Column(children: [
          Text(
            'Plese enter the otp',
            style: TextStyle(
                fontSize: 30,
                shadows: [Shadow(color: Colors.red, offset: Offset(3.0, 4.0))]),
          ),
          Container(
            child: Text('+91'),
          ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             getOTP(),
             getOTP(),
             getOTP(),
           ],
         ),

          ElevatedButton(onPressed: () {}, child: Text('Submit',style: TextStyle(fontSize: 30),)),

          Text('Plese Resend Otp',style: TextStyle(fontSize: 30))
        ]),
      ),
    );
  }

  Widget getOTP() 
  {
    return  SizedBox(
                height: 50,
                width: 50,
                child: TextField(
                  autocorrect: false,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.blueGrey,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      counterText: '',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
                ),
              );
  }


}
