import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My69Example extends StatefulWidget {
  const My69Example({super.key});

  @override
  State<My69Example> createState() => _My69ExampleState();
}

class _My69ExampleState extends State<My69Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search in emails",
            prefixIcon: Icon(Icons.person),
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Gmail Application",style: GoogleFonts.zhiMangXing(fontSize: 60),),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 140.0, top: 20,left: 20),
                child: Text(
                  "Gmail",
                  style: GoogleFonts.germaniaOne(fontSize: 40, color: Colors.red),
                ),
              ),
              Divider(thickness: 3),
              gimailScreen(textGmail: "All inboxes",iconGmail: Icons.filter),
              Divider(thickness: 3),
              gimailScreen(textGmail: "Primary", iconGmail: Icons.image),
              gimailScreen(textGmail: "Promotions", iconGmail: Icons.discount_outlined),
              gimailScreen(textGmail: "Social", iconGmail: Icons.person_outline),
              Padding(
                padding:  EdgeInsets.only(left:20.0),
                child: Text("All lables"),
              ),
              gimailScreen(textGmail: "Starred", iconGmail: Icons.star_border_rounded),
              gimailScreen(textGmail: "Snoozed", iconGmail: Icons.lock_clock_outlined),
              gimailScreen(textGmail: "Important", iconGmail: Icons.access_time_outlined),
              gimailScreen(textGmail: "Send", iconGmail: Icons.send),
              gimailScreen(textGmail: "Scheduled", iconGmail: Icons.schedule_send_outlined),
              gimailScreen(textGmail: "Outbox", iconGmail: Icons.check_box_outline_blank_sharp),
              gimailScreen(textGmail: "Drafts", iconGmail: Icons.note_outlined),
              gimailScreen(textGmail: "All mail", iconGmail: Icons.mail_outline),
              gimailScreen(textGmail: "Spam", iconGmail: Icons.new_releases_outlined),
              gimailScreen(textGmail: "Bin", iconGmail: Icons.delete),

              Padding(
                padding:  EdgeInsets.only(left:20.0),
                child: Text('Google app'),
              ),
              gimailScreen(textGmail: "Calender", iconGmail: Icons.new_releases_outlined),
              gimailScreen(textGmail: "Contacts", iconGmail: Icons.person_pin_circle_outlined),
              Divider(thickness: 3,),
              gimailScreen(textGmail: "Settings", iconGmail: Icons.settings),
              gimailScreen(textGmail: "Help and feedback", iconGmail: Icons.feedback),
            ],
          ),
        ),
      ),
    );
  }

  Widget gimailScreen({textGmail,IconData? iconGmail}) {
    return  ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(iconGmail),
              title: Text(textGmail),
            );
  }
}
