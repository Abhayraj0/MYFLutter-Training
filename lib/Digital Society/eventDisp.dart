import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/eventModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

Future<List<EventModel>> displayEv() async {
  final response = await http.get(Uri.parse(
      "https://grateful-amperages.000webhostapp.com/eventDisplay.php"));

  List jsonRe = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return jsonRe.map((e) => EventModel.fromJson(e)).toList();
  } else {
    throw Exception('Failed Api');
  }
}

class MyEventDisplayEx extends StatefulWidget {
  const MyEventDisplayEx({super.key});

  @override
  State<MyEventDisplayEx> createState() => _MyEventDisplayExState();
}

class _MyEventDisplayExState extends State<MyEventDisplayEx> {

  void deleteEvent(String? id) async {
    final response = await http.post(Uri.parse("https://grateful-amperages.000webhostapp.com/eventDelete.php"),body: {'id' : id});
    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyEventDisplayEx(),));
    } else {
      throw Exception("Failed Api");
    }
  }


  late Future _futureE;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureE = displayEv();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member Event Delete"),
      ),
        body: FutureBuilder(
      future: _futureE,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<EventModel> myEvent = snapshot.data!;
          return ListView.builder(
            itemCount: myEvent.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30),
                child: Container(
                  height: 100,
                  width: 200,
                  child: Card(
                    child: ListTile(
                      onTap: () {
                        Get.bottomSheet(
                            Flexible(
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Title : ${myEvent[index].titleE}",
                                          style: GoogleFonts.sendFlowers(
                                              fontSize: 50),
                                        ),
                                        Divider(
                                          height: 2,
                                          thickness: 2,
                                        ),
                                        SizedBox(
                                          height: 19,
                                        ),
                                        Text(
                                          "Description : ${myEvent[index].descE}",
                                          style:
                                              GoogleFonts.snippet(fontSize: 37),
                                        ),
                                        Divider(
                                          height: 2,
                                          thickness: 1,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Date : ${myEvent[index].dateE}",
                                              style: GoogleFonts.castoro(
                                                  fontSize: 27),
                                            ),
                                          ],
                                        ),
                                      ]),
                                ),
                              ),
                            
                            ),
                            enableDrag: true,
                            isDismissible: true);
                      },
                      leading: Icon(
                        Icons.person,
                        size: 40,
                      ),
                      title: Text(
                        "${myEvent[index].titleE}",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.saira(fontSize: 40),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            deleteEvent("${myEvent[index].id}");
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          print("Error : ${snapshot.hasError}");
        }
        return Center(child: CircularProgressIndicator());
      },
    ));
  }
}
