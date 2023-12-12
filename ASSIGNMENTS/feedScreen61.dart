import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFeedScreen61Example extends StatefulWidget {
  const MyFeedScreen61Example({super.key});

  @override
  State<MyFeedScreen61Example> createState() => _MyFeedScreen61ExampleState();
}

List<Image> imagesFodd = [
  Image.asset('assets/images/piza.png'),
  Image.asset('assets/images/avokado.jpg'),
  Image.asset('assets/images/burg.jpg'),
  Image.asset('assets/images/pasta.jpeg')
];
List<String> foodName = ['Pizza', 'Avocado Salad', 'Cheese Burger', 'Pasta'];
List<int> ratingNumber = [100, 230, 500, 343];
List priceFood = ['\$13.50', '\$15.70', '\$18.0', '\$10.50'];

class _MyFeedScreen61ExampleState extends State<MyFeedScreen61Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.filter_alt_outlined)),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                foodTextEx(testName: "Indian"),
                foodTextEx(testName: "Chinese", colorName: Colors.amberAccent),
                foodTextEx(testName: "Italian"),
                foodTextEx(testName: "Mexican "),
                foodTextEx(testName: "Spanish"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                textFoodName(textName: "All", fontW: FontWeight.bold),
                textFoodName(textName: "Sanwich"),
                textFoodName(textName: "Pizza"),
                textFoodName(textName: "Avocado"),
                textFoodName(textName: "Salad"),
                textFoodName(textName: "Soup"),
                textFoodName(textName: "Burgar"),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 160.0),
            child: girdViewExampleImage(),
          ),
        ],
      ),
    );
  }

  Widget foodTextEx({testName, Color? colorName}) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Flex(direction: Axis.horizontal, children: [
        Card(
          color: colorName,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              testName,
              style: GoogleFonts.zcoolXiaoWei(fontSize: 30),
            ),
          ),
        ),
      ]),
    );
  }

  Widget textFoodName({textName, fontW}) {
    return Flex(direction: Axis.horizontal, children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          textName,
          style: GoogleFonts.zcoolXiaoWei(fontSize: 20, fontWeight: fontW),
        ),
      ),
    ]);
  }

  Widget girdViewExampleImage() {
    return Container(
      child: GridView.builder(
        itemCount: imagesFodd.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('${imagesFodd[index]}'))),
                      child: imagesFodd[index]),
                ),
                Text(
                  "${foodName[index]}",
                  style: GoogleFonts.zhiMangXing(fontSize: 20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBarIndicator(
                      rating: 4.0,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 30.0,
                      direction: Axis.horizontal,
                    ),
                    Text("(${ratingNumber[index]})")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${priceFood[index]}",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Card(
                        color: Colors.amber,
                        child:
                            IconButton(onPressed: () {}, icon: Icon(Icons.add)))
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
