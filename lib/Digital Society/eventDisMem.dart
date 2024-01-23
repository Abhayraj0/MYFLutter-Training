import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/eventModel.dart';
import 'package:flutter/material.dart';
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

class MyEventMember extends StatefulWidget {
  const MyEventMember({super.key});

  @override
  State<MyEventMember> createState() => _MyEventMemberState();
}

class _MyEventMemberState extends State<MyEventMember> {
  late Future _futureEN;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureEN = displayEv();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _futureEN,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<EventModel> myEvent = snapshot.data!;
            return ListView.builder(
              itemCount: myEvent.length,
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
                                "Title : ${myEvent[index].titleE}",
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
                                "Description : ${myEvent[index].descE}",
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
                                    "Date : ${myEvent[index].dateE}",
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
