import 'dart:convert';

import 'package:digitalsocietyapp/Digital%20Society/Model%20All/memberModel.dart';
import 'package:digitalsocietyapp/Digital%20Society/complaintAdd.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

Future<List<MemberModel1>> dispMember() async {
  final response = await http.get(Uri.parse("uri"));
  
  List jsonResponse = jsonDecode(response.body);
  if (response.statusCode == 200) {
   return jsonResponse.map((e) => MemberModel1.formJson(e)).toList();
  } else {
    throw Exception("Failed GetMember Api");
  }
}

class MyMemberDashbord extends StatefulWidget {
  const MyMemberDashbord({super.key});

  @override
  State<MyMemberDashbord> createState() => _MyMemberDashbordState();
}

class _MyMemberDashbordState extends State<MyMemberDashbord> {
  late Future<List<MemberModel1>> _futureDataM;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureDataM = dispMember();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              tileMode: TileMode.mirror,
              colors: [Colors.purple, Colors.white, Colors.deepPurpleAccent])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: FutureBuilder(
              future: _futureDataM,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<MemberModel1> myMember = snapshot.data!;
                  return Stack(children: [
                    ListView.builder(
                      itemCount: myMember.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                          child: Container(
                            height: 160,
                            child: Card(
                              shadowColor: Colors.black87,
                              // color: Colors.purple.withOpacity(.3),
                              elevation: 50,
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: BorderSide.none),
                              margin: EdgeInsets.all(20),
                              child: ListTile(
                                  title: Text(
                                    "${myMember[index].name}",
                                    style: GoogleFonts.mPlus2(fontSize: 35),
                                  ),
                                  subtitle: Text(
                                    "${myMember[index].email}",
                                    style: GoogleFonts.mPlus2(fontSize: 25),
                                  ),
                                  leading: CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(
                                        "https://images03.military.com/sites/default/files/styles/full/public/2023-05/1time%20john%20wick%205%20announced%201200.jpg"),
                                  )),
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 240.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // InkWell(
                                //   onTap: () {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //           builder: (context) =>
                                //               MyMemberDataShow(),
                                //         ));
                                //   },
                                //   child: Container(
                                //     height: 180,
                                //     width: 200,
                                //     child: Card(
                                //       child: Column(
                                //         children: [
                                //           Image.network(
                                //               "https://i.cdn.newsbytesapp.com/images/l99520220624185533.jpeg"),
                                //           Text(
                                //             "Member",
                                //             style:
                                //                 GoogleFonts.saira(fontSize: 30),
                                //           )
                                //         ],
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                InkWell(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => MyNoticeAdd(),
                                    //     ));
                                  },
                                  child: Container(
                                    height: 190,
                                    width: 200,
                                    child: Card(
                                      child: Column(
                                        children: [
                                          Image.network(
                                              "https://i.pinimg.com/originals/19/80/0e/19800e445be9afbf00dd1ff13e53bc2a.jpg"),
                                          Text(
                                            "Notice",
                                            style:
                                                GoogleFonts.saira(fontSize: 30),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => MyEventAdd(),
                                      //     ));
                                    },
                                    child: Container(
                                      height: 190,
                                      width: 200,
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.network(
                                                "https://blog.apnacomplex.com/wp-content/uploads/2011/06/3834583271_d1db8d2ed3.jpg"),
                                            Text(
                                              "Event",
                                              style: GoogleFonts.saira(
                                                  fontSize: 30),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                                InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                MyComplaintAdd(),
                                          ));
                                    },
                                    child: Container(
                                      height: 200,
                                      width: 200,
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Image.network(
                                                "https://www.shutterstock.com/image-vector/people-expressing-anger-emotion-isolated-260nw-2142312379.jpg"),
                                            Text(
                                              "Complaints ",
                                              style: GoogleFonts.saira(
                                                  fontSize: 28),
                                            )
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ]);
                }
                return CircularProgressIndicator();
              })),
    );
  }
}
