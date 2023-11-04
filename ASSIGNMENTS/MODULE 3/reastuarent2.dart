import 'package:flutter/material.dart';

class MyResturent2 extends StatefulWidget {
  const MyResturent2({super.key});

  @override
  State<MyResturent2> createState() => _MyResturent2State();
}

class _MyResturent2State extends State<MyResturent2> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(alignment: Alignment.topCenter, children: [
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.02,
                right: MediaQuery.of(context).size.width * 0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      icon: Icon(Icons.arrow_back_rounded),
                    )),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_outline),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 190.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(60, 60),
                    topRight: Radius.elliptical(60, 60),
                  )),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
            child: Container(
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/seiua.jpeg')),
                  border: Border.all(
                      width: 2, color: Colors.black, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(150)),
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 290),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Sei Ua Samun Phrai",
                    style: TextStyle(fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iocnText(nameT: "50min", colorId: Colors.blue),
                      iocnText(
                          iconId: Icons.star_border_outlined, nameT: "4.8"),
                      iocnText(
                          iconId: Icons.fireplace_sharp,
                          nameT: "325kcal",
                          colorId: Colors.red),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Card(
                          color: Colors.grey[200],
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "s12",
                                style: TextStyle(fontSize: 25),
                              )),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(40)),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                count--;
                              });
                            },
                            icon: Icon(Icons.remove)),
                      ),
                      Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40)),
                          child: Text(
                            "$count",
                            style: TextStyle(fontSize: 25),
                          )),
                      Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(40)),
                          child: IconButton(
                              onPressed: () {
                                setState(() {
                                  count++;
                                });
                              },
                              icon: Icon(Icons.add))),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 250, top: 20),
                    child: Text(
                      "Ingredienta",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textImages(
                            imageFood:
                                'https://2.bp.blogspot.com/-5VKx64PG1ew/UGBlgSbbQhI/AAAAAAAABTg/2UJffdFphFs/s1600/Vegetable+Udon+Noodle+Bowl+2.jpg',
                            texButton: "Noodle"),
                        textImages(
                            imageFood:
                                'https://images.everydayhealth.com/images/how-to-make-the-perfect-hardboiled-egg-1440x810.jpg?sfvrsn=b7a17dd0_1',
                            texButton: "Egg"),
                        textImages(
                            imageFood:
                                'https://previews.123rf.com/images/boonchuay/boonchuay1811/boonchuay181100004/114018135-chopped-green-onions-in-the-white-bowl-isolated-on-white-background-top-view-flat-lay.jpg',
                            texButton: "Scallion"),
                        textImages(
                            imageFood:
                                'https://www.fisheries.noaa.gov/s3/styles/original/s3/2022-09/640x427-Shrimp-Pink-NOAAFisheries.png',
                            texButton: 'Shrimp')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0),
                    child: Text(
                      "About",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        "A vibrant Thai sasusage made with ground chicken, plus its spicy chile dip, from Chef Pamass savang of Atlanta's Talat Market"),
                  )
                ],
              ),
            ),
          )
        ]),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Container(
              alignment: Alignment.center,
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Text(
                '$count',
                style: TextStyle(fontSize: 20),
              )),
          icon: Icon(
            Icons.shopping_bag_outlined,
            size: 40,
          ),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }

  Widget iocnText(
      {nameT,
      IconData iconId = Icons.watch_later_outlined,
      Color colorId = Colors.amber}) {
    return Row(
      children: [
        Icon(
          iconId,
          color: colorId,
        ),
        Text("$nameT")
      ],
    );
  }

  Widget textImages({texButton, imageFood}) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: CircleAvatar(
        radius: 70,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(imageFood)),
                    border: Border.all(
                        width: 2,
                        color: Colors.black,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(80)),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("$texButton"))
          ],
        ),
      ),
    );
  }
}
