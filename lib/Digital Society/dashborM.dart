import 'package:digitalsociety/Digital%20Society/complaintAdd.dart';
import 'package:digitalsociety/Digital%20Society/eventDisMem.dart';
import 'package:digitalsociety/Digital%20Society/notic.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//https://grateful-amperages.000webhostapp.com/getMember1.php

// https:grateful-amperages.000webhostapp.com/displayMember1.php

// void dispMe() async {
//   final response = await http.get(Uri.parse(
//       ""));

//   List jsonResponse = jsonDecode(response.body);
//   if (jsonResponse.isEmpty) {
//     Get.snackbar("Failed", "Your Display member is failed");
//   } else {
//     if (response.statusCode == 200) {
//       Get.snackbar("Successfully", "Your Display member is successfully");

//       jsonResponse.map((e) => MemberModel1.formJson(e)).toList();
//     } else {
//       throw Exception("Failed GetMember Api");
//     } }
// }

class MyMemberDashbord extends StatefulWidget {
  String? id, name, email, contact, houseno;
  MyMemberDashbord(
      {super.key,
      required this.id,
      required this.name,
      required this.email,
      required this.houseno,
      required this.contact});

  @override
  State<MyMemberDashbord> createState() => _MyMemberDashbordState();
}

class _MyMemberDashbordState extends State<MyMemberDashbord> {
  // Future<void> getDashboardDi() async {
  //   final response = await http.post(
  //       Uri.parse(
  //           "https://grateful-amperages.000webhostapp.com/displayMember1.php"),
  //       body: {"id": widget.id});

  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body.toString());
  //     String? id = data[0]['id'];
  //     // String? name = data[0]['name'];
  //     // String? email = data[0]['email'];
  //     print(id);
  //   } else {
  //     throw Exception("Failed Api : ");
  //   }
  // }

  // // late Future _futureDataDash;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getDashboardDi();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyEventMember(),
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
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyNoticeMember(),
                    ));
              },
              child: Card(
                child: Column(
                  children: [
                    Image.network(
                        "https://i.pinimg.com/originals/19/80/0e/19800e445be9afbf00dd1ff13e53bc2a.jpg"),
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
                      builder: (context) => MyComplaintAdd(),
                    ));
              },
              child: Card(
                child: Column(
                  children: [
                    Image.network(
                        "https://www.shutterstock.com/image-vector/people-expressing-anger-emotion-isolated-260nw-2142312379.jpg"),
                    Text(
                      "Compliant",
                      style: GoogleFonts.saira(fontSize: 30),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      //     FutureBuilder(
      //   future: _futureDataDash,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return ListView.builder(itemCount: snapshot.data.length,itemBuilder: (context, index) {
      //         return Card(
      //       child: Column(children: [
      //         Text(snapshot.data[index].name),
      //         // Text(widget.id!),

      //         Text(snapshot.data[index].email),

      //       ]),
      //     );
      //       },);
      //     } else {
      //       return Text("Error");
      //     }
      //     return Center(child: CircularProgressIndicator());
      //   },
      // ),

      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            leading: Icon(
              Icons.person,
              size: 40,
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
          ),
          ListTile(
            title: Text("Compliant"),
            leading: Icon(Icons.warning_rounded),
          ),
          ListTile(
            title: Text("Notice"),
            leading: Icon(Icons.note_add),
          ),
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
    );
  }
}





// class MyMemberDashbord extends StatelessWidget {
//   // MemberModel1 memberModel1;
//   MyMemberDashbord({});

//   List imageApp = [
//     'https://i.pinimg.com/originals/19/80/0e/19800e445be9afbf00dd1ff13e53bc2a.jpg',
//     'https://blog.apnacomplex.com/wp-content/uploads/2011/06/3834583271_d1db8d2ed3.jpg',
//     'https://www.shutterstock.com/image-vector/people-expressing-anger-emotion-isolated-260nw-2142312379.jpg'
//   ];
//   int _cur = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Member Dashboard"),
//         titleSpacing: 50,
//       ),
//       body: Stack(
//         children: [
//           Container(
//             height: 400,
//             width: double.infinity,
//             child: PageView.builder(
//               scrollDirection: Axis.horizontal,
//               reverse: false,
//               physics: BouncingScrollPhysics(
//                   decelerationRate: ScrollDecelerationRate.fast),
//               allowImplicitScrolling: true,
//               onPageChanged: (value) {
//                 _cur = value;
//               },
//               pageSnapping: true,
//               itemCount: imageApp.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: NetworkImage("${imageApp[index]}"),
//                           fit: BoxFit.fill,
//                         ),
//                       ),
//                     );
//               },
//             ),
//           ),

         
//         ],
//       ),
     
//     );
//   }
// }
