import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class My61CardExample extends StatefulWidget {
  const My61CardExample({super.key});

  @override
  State<My61CardExample> createState() => _My61CardExampleState();
}

class _My61CardExampleState extends State<My61CardExample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.arrow_back_ios),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card",
                  style: GoogleFonts.xanhMono(fontSize: 30),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  "Thu 6th of June",
                  style: GoogleFonts.zenKurenaido(fontSize: 25),
                ),
                Card(
                  color: Colors.grey,
                  child: Text("+ Add to Order"),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset("assets/images/piza.png"),
                    title: Text(
                      "Pizza",
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      "- 3 +",
                      textAlign: TextAlign.center,
                    ),
                    trailing: Flex(direction: Axis.vertical, children: [
                      Text("\$7.0"),
                      Card(
                        color: Colors.amber,
                        child: Icon(
                          Icons.cancel,
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset("assets/images/burger.jpg"),
                    title: Text(
                      "Burger",
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      "- 5 +",
                      textAlign: TextAlign.center,
                    ),
                    trailing: Flex(direction: Axis.vertical, children: [
                      Text("\$4.0"),
                      Card(
                        color: Colors.amber,
                        child: Icon(
                          Icons.cancel,
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset("assets/images/pasta.jpeg"),
                    title: Text(
                      "Pasta",
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      "- 1 +",
                      textAlign: TextAlign.center,
                    ),
                    trailing: Flex(direction: Axis.vertical, children: [
                      Text("\$10.0"),
                      Card(
                        color: Colors.amber,
                        child: Icon(
                          Icons.cancel,
                        ),
                      )
                    ]),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset("assets/images/icecream.png"),
                    title: Text(
                      "Pizza",
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(
                      "- 7 +",
                      textAlign: TextAlign.center,
                    ),
                    trailing: Flex(direction: Axis.vertical, children: [
                      Text("\$2.0"),
                      Card(
                        color: Colors.amber,
                        child: Icon(
                          Icons.cancel,
                        ),
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.zenMaruGothic(fontSize: 25),
                    ),
                    Text(
                      "\$100",
                      style: GoogleFonts.zenMaruGothic(fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber),
                          child: Text("CheckOut"))),
                )
              ]),
        ),
      ),
    );
  }
}
