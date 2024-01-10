import 'package:digitalsocietyapp/Digital%20Society/loginM.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemberandChairmanPage extends StatefulWidget {
  const MemberandChairmanPage({super.key});

  @override
  State<MemberandChairmanPage> createState() => _MemberandChairmanPageState();
}

class _MemberandChairmanPageState extends State<MemberandChairmanPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://img.freepik.com/free-vector/isometric-smart-city_52683-4283.jpg'),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    color: Colors.pink.withBlue(160),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyMemberLogin(),));
                        },
                        child: Text(
                          "Member",
                          style: GoogleFonts.alegreyaSansSc(
                              fontSize: 30, color: Colors.white),
                        ))),
                SizedBox(
                  height: 30,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    color: Colors.pink.withBlue(160),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Chairman",
                          style: GoogleFonts.alegreyaSansSc(
                              fontSize: 30, color: Colors.white),
                        ))),
              ],
            )
          ],
        )),
      ),
    );
  }
}
