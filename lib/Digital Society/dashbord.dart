import 'dart:convert';

import 'package:digitalsociety/Digital%20Society/Model%20All/chairman.dart';
import 'package:digitalsociety/Digital%20Society/complaintAdd.dart';
import 'package:digitalsociety/Digital%20Society/complaintDisp.dart';
import 'package:digitalsociety/Digital%20Society/eventAdd.dart';
import 'package:digitalsociety/Digital%20Society/eventDisMem.dart';
import 'package:digitalsociety/Digital%20Society/eventDisp.dart';
import 'package:digitalsociety/Digital%20Society/memberScreen.dart';
import 'package:digitalsociety/Digital%20Society/notic.dart';
import 'package:digitalsociety/Digital%20Society/noticeAddrgister.dart';
import 'package:digitalsociety/Digital%20Society/noticeDisplay.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
// import 'package:http/http.dart' as http;

// Future<List<ChairmanModel>> chairmanDis() async {
//   final response = await http.get(Uri.parse(
//       "https://grateful-amperages.000webhostapp.com/charimanDisp.php"));
//   List jsonRe = jsonDecode(response.body);
//   if (response.statusCode == double.maxFinite) {
//     return jsonRe.map((e) => ChairmanModel.fromJason(e)).toList();
//   } else {
//     throw Exception("Failed Chairman Api");
//   }
// }

class MyChairmanDashbord extends StatefulWidget {
  String? id, name, email;
  MyChairmanDashbord({super.key, this.id, this.name, this.email});

  @override
  State<MyChairmanDashbord> createState() => _MyChairmanDashbordState();
}

class _MyChairmanDashbordState extends State<MyChairmanDashbord> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                tileMode: TileMode.mirror,
                colors: [
              Colors.purple,
              Colors.white,
              Colors.deepPurpleAccent
            ])),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text("Admin Dashboard"),
          ),
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: 140,
                child: Card(
                  shadowColor: Colors.black87,
                  surfaceTintColor: Colors.purple,
                  elevation: 50,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide.none),
                  margin: EdgeInsets.all(14),
                  child: ListTile(
                      title: Text(
                        "${widget.name}",
                        style: GoogleFonts.mPlus2(fontSize: 35),
                      ),
                      subtitle: Flexible(
                        child: Text(
                          "${widget.email}",
                          style: GoogleFonts.mPlus2(fontSize: 20),
                        ),
                      ),
                      leading: Container(
                        height: 130,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://previews.123rf.com/images/pandavector/pandavector1704/pandavector170400314/75968328-avatar-of-a-man-in-a-shirt-avatar-and-face-single-icon-in-cartoon-style-vector-symbol-stock.jpg"),
                                fit: BoxFit.fill)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 180.0, left: 10, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyMemberDataShow(),
                              ));
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/me.jpg",
                                height: 250,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Member",
                                style: GoogleFonts.saira(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyNoticeAdd(),
                              ));
                        },
                        child: Card(
                          child: Column(
                            children: [
                              Image.network(
                                "https://i.pinimg.com/originals/19/80/0e/19800e445be9afbf00dd1ff13e53bc2a.jpg",
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Notice",
                                style: GoogleFonts.saira(fontSize: 30),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyEventAdd(),
                                ));
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(
                                  "https://blog.apnacomplex.com/wp-content/uploads/2011/06/3834583271_d1db8d2ed3.jpg",
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  "Event",
                                  style: GoogleFonts.saira(fontSize: 30),
                                )
                              ],
                            ),
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyComplaintDisplayApi(),
                                ));
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.network(
                                  "https://www.shutterstock.com/image-vector/people-expressing-anger-emotion-isolated-260nw-2142312379.jpg",
                                  fit: BoxFit.fill,
                                ),
                                Text(
                                  "Complaints ",
                                  style: GoogleFonts.saira(fontSize: 28),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(children: [
              ListTile(
                leading: Container(
                  height: 130,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://previews.123rf.com/images/pandavector/pandavector1704/pandavector170400314/75968328-avatar-of-a-man-in-a-shirt-avatar-and-face-single-icon-in-cartoon-style-vector-symbol-stock.jpg"),
                          fit: BoxFit.fill)),
                ),
                title: Text(
                  widget.name.toString(),
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  widget.email.toString(),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Divider(
                thickness: 3,
                height: 40,
              ),
              ListTile(
                  title: Text("Event"),
                  leading: Icon(Icons.event),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyEventDisplayEx(),
                        ));
                  }),
              ListTile(
                  title: Text("Compliant"),
                  leading: Icon(Icons.warning_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyComplaintAdd(),
                        ));
                  }),
              ListTile(
                  title: Text("Notice"),
                  leading: Icon(Icons.note_add),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyNoticeDisplayEx(),
                        ));
                  }),
              ListTile(
                  title: Text("Member"),
                  leading: Icon(Icons.person),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyMemberDataShow(),
                        ));
                  }),
              Divider(
                thickness: 4,
                height: 20,
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
              Divider(thickness: 4),
              SizedBox(
                height: 340,
              ),
              AboutListTile(
                icon: Icon(
                  Icons.info,
                ),
                child: Text('About app'),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'Digital Society',
                applicationVersion: '1.0.0',
                applicationLegalese: '\u00a9 2024 Company',
                aboutBoxChildren: [
                  ///Content goes here...
                ],
              )
            ]),
          ),
        ));
  }
}
