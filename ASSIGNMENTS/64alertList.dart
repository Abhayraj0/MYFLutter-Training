import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAlertListCity extends StatefulWidget {
  const MyAlertListCity({super.key});

  @override
  State<MyAlertListCity> createState() => _MyAlertListCityState();
}

class _MyAlertListCityState extends State<MyAlertListCity> {
  List<String> cityName = [
    'Bhavnagar',
    'Ahmedabad',
    'Surat',
    'Rajkot',
    'Jamngar',
    'Dwarka'
  ];
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("City List in Alert dialogbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: InkWell(
                  onTap: _showAlertDialogCity,
                  child: Text(
                    "$result",
                    style: GoogleFonts.zhiMangXing(fontSize: 70),
                  ))),
        ],
      ),
    );
  }

  _showAlertDialogCity() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("List of all City "),
          content: Container(
            height: 300, width: double.maxFinite,
            child: SimpleDialog(
              children: cityName
                  .map((e) => SimpleDialogOption(
                        onPressed: () {
                          Navigator.pop(context, e);
                        },
                        child: Text(e),
                      ))
                  .toList(),
            ),
          ),
        );
      },
    ).then((value) {
      if (value != null) {
        setState(() {
          result = value;
        });
      }
    });
  }
}
