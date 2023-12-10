import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';

class MyCallPhonePermisoneEx extends StatefulWidget {
  const MyCallPhonePermisoneEx({super.key});

  @override
  State<MyCallPhonePermisoneEx> createState() => _MyCallPhonePermisoneExState();
}

class _MyCallPhonePermisoneExState extends State<MyCallPhonePermisoneEx> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _requestPhone();
  }

  Future<void> _requestPhone() async {
    var status = await Permission.phone.request();
    if (status.isGranted) {
      print("Phone permission Allow");
    } else if (status.isDenied) {
      print("Phone permission Denied");

    } else if(status.isPermanentlyDenied) {
      _showPermissionDialog();
    }
  }

  void _showPermissionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Permission Required"),
          content: Text("This app required a phone permission please allow"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Deny")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Allow")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Phone Permisson Application"),
      ),
      body:Center(child: Padding(
        padding: const EdgeInsets.all(58.0),
        child: Text("Phone Call Allpication",style: GoogleFonts.zhiMangXing(fontSize: 60),),
      )),
    );
  }
}
