import 'dart:convert';

import 'package:digitalsocietyapp/Digital%20Society/Model%20All/memberModel.dart';
import 'package:digitalsocietyapp/Digital%20Society/displayMem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<MemberModel1>> memberDis() async {
  final response = await http.get(
      Uri.parse("https://grateful-amperages.000webhostapp.com/getMember1.php"));
  List jsonRespo = jsonDecode(response.body);
  if (response.statusCode == 200) {
    return jsonRespo.map((e) => MemberModel1.formJson(e)).toList();
  } else {
    throw Exception("Failled Member Data Api");
  }
}

class MyMemberDataShow extends StatefulWidget {
  const MyMemberDataShow({super.key});

  @override
  State<MyMemberDataShow> createState() => _MyMemberDataShowState();
}

class _MyMemberDataShowState extends State<MyMemberDataShow> {
  late Future<List<MemberModel1>> _futureData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureData = memberDis();
  }

  Future<void> deleteMe(String? id) async {
    final response = await http.post(
        Uri.parse(
            "https://grateful-amperages.000webhostapp.com/deleteMember.php"),
        body: {'id': id});

   
    if (response.statusCode == 200) {
     
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyMemberDataShow(),
          ));
    } else {
      throw Exception("Failed Delete Api");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Member Display"),
      ),
      body: FutureBuilder(
        future: _futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<MemberModel1> myMemberList = snapshot.data!;
            return Stack(
              children: [
                ListView.builder(
                  itemCount: myMemberList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("${myMemberList[index].name}"),
                        subtitle: Text("${myMemberList[index].email}"),
                        trailing: Wrap(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    deleteMe(myMemberList[index].id);
                                  });
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                )),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyLlistDataShowMember(
                                                name: myMemberList[index].name,
                                                contact:
                                                    myMemberList[index].contact,
                                                houseno:
                                                    myMemberList[index].houseno,
                                                email:
                                                    myMemberList[index].email),
                                      ));
                                },
                                icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
