import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myflutterapplcation/Assignment%20Modula4/61card.dart';
import 'package:myflutterapplcation/Assignment%20Modula4/feedScreen61.dart';

class My61Example extends StatefulWidget {
  const My61Example({super.key});

  @override
  State<My61Example> createState() => _My61ExampleState();
}

class _My61ExampleState extends State<My61Example> {
  List<Widget> myListScreen = [
    MyFeedScreen61Example(),
    MyFeedScreen61Example(),
    My61CardExample(),
  ];
  int index_value = 0;
  onChange(int value) {
    setState(() {
      index_value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myListScreen.elementAt(index_value),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.feed_outlined),
            label: "Feeds",
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your Order",
                                style: GoogleFonts.delius(fontSize: 25),
                              ),
                              Icon(Icons.delete)
                            ],
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Cheese Burger",
                                    style: GoogleFonts.delius(fontSize: 20),
                                  ),
                                  Text(
                                    "250g",
                                    style: GoogleFonts.delius(fontSize: 15),
                                  ),
                                ],
                              ),
                              Text(
                                "\$7.0",
                                style: GoogleFonts.delius(fontSize: 25),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Avocado Salad",
                                    style: GoogleFonts.delius(fontSize: 20),
                                  ),
                                  Text(
                                    "350g",
                                    style: GoogleFonts.delius(fontSize: 15),
                                  ),
                                ],
                              ),
                              Text(
                                "\$10.0",
                                style: GoogleFonts.delius(fontSize: 25),
                              )
                            ],
                          ),Divider(thickness: 2,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("Total",style: GoogleFonts.delius(fontSize: 25),),
                          Text("\$17.0",style: GoogleFonts.delius(fontSize: 25),),],),
                          ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.amber), child: Text("Add to Card"))
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.person),
            ),
            label: "Accounts",
            backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: "Card",
            backgroundColor: Colors.orangeAccent,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: index_value,
        onTap: onChange,
      ),
    );
  }
}
