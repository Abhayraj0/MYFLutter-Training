import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class My77Example extends StatefulWidget {
  const My77Example({super.key});

  @override
  State<My77Example> createState() => _My77ExampleState();
}

class _My77ExampleState extends State<My77Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call and SMS Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  launch("tel: +91 9327285313");
                }, icon: Icon(Icons.call), label: Text("Call")),
            ElevatedButton.icon(
                onPressed: () async {
                  // launch("sms: +91 9327285313?body= Hi my name is Abhayraj");
                  final Uri url = Uri(
                    scheme: "sms",
                    path: "+91 9327285313"
                  );
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("show dialog: cannot lunch url")));
                  }

                }, icon: Icon(Icons.sms), label: Text("SMS")),
          ],
        ),
      ),
    );
  }
}
