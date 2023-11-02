import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRestaurant extends StatefulWidget {
  const MyRestaurant({super.key});

  @override
  State<MyRestaurant> createState() => _MyRestaurantState();
}

List foodIm = ['assets/images/seiua.jpeg', 'assets/images/ratatollia.jpg'];
List foodNam = ['Soba Soup', 'Sei Ua Samun Phrai', 'Ratatoullia Pasta'];

class _MyRestaurantState extends State<MyRestaurant> {
  @override
  Widget build(BuildContext context) {
    //TabController tabController = TabController(length: 4, vsync: this);
    return Container(
      color: Colors.grey[200],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Restaurant",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Card(
                            color: Colors.grey,
                            //shape: Border(bottom: BorderSide(width: 2)),
                            child: Text(
                              "20-30min",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "2.4km",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Restaurant",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Card(
                  color: Colors.white,
                  //shape: Border(bottom: BorderSide(width: 2)),
                  child: Text(
                    "R",
                    style: TextStyle(fontSize: 60),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              children: [
                Text(
                  "Orange Sandiwches is delicious",
                  style: GoogleFonts.familjenGrotesk(fontSize: 20),
                ),
                Spacer(flex: 2),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.star_border),
                    color: Colors.amber),
                Text(
                  "4.5",
                  style: GoogleFonts.familjenGrotesk(fontSize: 20),
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                tabText(tText: 'Recommend', tColor: Colors.orange),
                tabText(tText: "Popular"),
                tabText(tText: "Noodles"),
                tabText(tText: "Pizza"),
                tabText(tText: "Bargar")
              ],
            ),
          ),
          listTileDemo(tex: "Soba Soup", imageCl: 'assets/images/soba.jpg'),
          listTileDemo(tex: "Sei Ua Samun Phrai", imageCl: 'assets/images/seiua.jpeg'),
          listTileDemo(tex: "Rataoullie Pasta", imageCl: 'assets/images/ratatollia.jpg'),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.amber[600],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Icon(
            Icons.shopping_bag_outlined,
            size: 40,
          ),
        ),
      ),
    );
  }

  tabText({tText, tColor}) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Card(
        color: tColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,
        child: Container(
          padding: EdgeInsets.all(14),
          child: Text(
            '$tText',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }

  listTileDemo({tex, imageCl}) {
    return Container(
      padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.02,
          right: MediaQuery.of(context).size.width * 0.02),
      child: Card(
        child: ListTile(
          onTap: () {},
          leading: Image.asset(imageCl),
          trailing: Icon(
            Icons.arrow_right_outlined,
            size: 40,
          ),
          title: Text(
            "$tex",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text("12"),
        ),
      ),
    );
  }
}
