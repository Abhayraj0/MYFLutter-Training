import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyLlistDataShowMember extends StatelessWidget {
  String? name, contact, houseno, email;
  MyLlistDataShowMember({required this.name, required this.contact, required this.houseno, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Show Data"),),
      body: Container(
        height: 230,width: double.maxFinite,
        child: Card(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Center(child: Icon(Icons.person,size: 80,)),
            Text("Name : $name",style: GoogleFonts.dangrek(fontSize: 35),),
            Text("Cobtact : $contact"),
            Text("House No : $houseno"),
            Text("Email : $email"),
          ]),
        ),
      ),
    );
  }
}