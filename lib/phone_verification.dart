import 'package:flutter/material.dart';
import 'package:login/otp_verification.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.amber[100],
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top: 110),
              child: Text(
                'Please enter your\n Phone number ',
                style: TextStyle(color: Colors.grey, fontSize: 30),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  right: 35,
                  left: 35),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your mobile number..',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    MyOtpVerification()));
                      },
                      child: Text(
                        'Verify OTP',
                        style: TextStyle(),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
