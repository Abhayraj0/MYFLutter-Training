import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/noticeModel.dart';
import 'package:digitalsociety/Digital%20Society/eventAdd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

Future<List<NoticeModel>> displayNotice() async {
  final response = await http.get(Uri.parse(
      "https://grateful-amperages.000webhostapp.com/notice_display.php"));
  List jsonRespon = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return jsonRespon.map((e) => NoticeModel.fromJson(e)).toList();
  } else {
    throw Exception("Failred Api");
  }
}

class MyNoticeDisplayEx extends StatefulWidget {
  const MyNoticeDisplayEx({super.key});

  @override
  State<MyNoticeDisplayEx> createState() => _MyNoticeDisplayExState();
}

class _MyNoticeDisplayExState extends State<MyNoticeDisplayEx> {

  void deleteNotice(String? id) async {
    final response = await http.post(Uri.parse("https://grateful-amperages.000webhostapp.com/notice_delete.php"),body: {'id' : id});
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyNoticeDisplayEx(),));
    } else {
      throw Exception("Failed Api");
    }
  }


  late Future<List<NoticeModel>> _futureNotice;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureNotice = displayNotice();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notice Display"),
      ),
      body: FutureBuilder(
        future: _futureNotice,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<NoticeModel> myNotice = snapshot.data!;
            return ListView.builder(
              itemCount: myNotice.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Get.bottomSheet(Flexible(
                          
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text("Title : ${myNotice[index].titleN}",
                                  style: GoogleFonts.sancreek(fontSize: 40)),
                              Divider(
                                height: 30,
                                thickness: 2,
                              ),
                              Text(
                                "Description : ${myNotice[index].descN}",
                                style: GoogleFonts.saira(fontSize: 30),
                              ),
                              Divider(
                                height: 15,
                                thickness: 1,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Date : ${myNotice[index].dateN}"),
                                ],
                              ),
                            ],

                                                ),
                        )),
                      backgroundColor: Colors.white,
                      isDismissible: true,
                      enableDrag: true,
                      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20))
                      );
                    },
                    title: Text(
                      "${myNotice[index].titleN}",
                      style: GoogleFonts.sairaSemiCondensed(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    leading: Icon(
                      Icons.person,
                      size: 40,
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            deleteNotice(myNotice[index].id);
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 40,
                        )),
                  ),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
