import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/noticeModel.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

Future<List<NoticeModel>> displayNv() async {
  final response = await http.get(Uri.parse(
      "https://grateful-amperages.000webhostapp.com/notice_display.php"));

  List jsonRe = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return jsonRe.map((e) => NoticeModel.fromJson(e)).toList();
  } else {
    throw Exception('Failed Api');
  }
}

class MyNoticeMember extends StatefulWidget {
  const MyNoticeMember({super.key});

  @override
  State<MyNoticeMember> createState() => _MyNoticeMemberState();
}

class _MyNoticeMemberState extends State<MyNoticeMember> {
  late Future _futureNN;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureNN = displayNv();
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: FutureBuilder(
        future: _futureNN,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<NoticeModel> myNotice = snapshot.data!;
            return ListView.builder(
              itemCount: myNotice.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Flexible(
                    child: Card(
                      color: Colors.orange.withOpacity(.4),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Title : ${myNotice[index].titleN}",
                                style: GoogleFonts.sendFlowers(fontSize: 50),
                              ),
                              Divider(
                                height: 2,
                                thickness: 2,
                              ),
                              SizedBox(
                                height: 19,
                              ),
                              Text(
                                "Description : ${myNotice[index].descN}",
                                style: GoogleFonts.snippet(fontSize: 37),
                              ),
                              Divider(
                                height: 2,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Date : ${myNotice[index].dateN}",
                                    style: GoogleFonts.castoro(fontSize: 27),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.purpleAccent),
          );
        },
      ),
    );
  }
}