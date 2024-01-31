import 'package:flutter/material.dart';
import 'package:inventorymanagementapp/productAdd.dart';
import 'package:inventorymanagementapp/productDelete.dart';
import 'package:inventorymanagementapp/productDisplay.dart';

class MyDashBordE extends StatefulWidget {
  String? nameUser;
  MyDashBordE({super.key, this.nameUser});

  @override
  State<MyDashBordE> createState() => _MyDashBordEState();
}

class _MyDashBordEState extends State<MyDashBordE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout_sharp))],
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.purple.withOpacity(.8),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(300, 150),
                    bottomRight: Radius.elliptical(300, 150))),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 40.0, top: MediaQuery.of(context).size.height * 0.1),
              child: Text(
                "${widget.nameUser}",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.27),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyProductAdd(),
                              ));
                        },
                        child: Container(
                          height: 230,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                              child: Column(
                            children: [
                              Container(
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/addCard.png"))),
                              ),
                              Text(
                                "Add Product",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          )),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyProductDelete(),));
                        },
                        child: Container(
                          // color: Colors.white,
                          height: 230,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                              child: Column(
                            children: [
                              Container(
                                height: 170, width: 170,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/deletePro.png"))),
                      
                                // child: Image.network("https://png.pngtree.com/png-clipart/20190517/original/pngtree-common-e-commerce-icon-car-purchase-png-image_4059419.jpg"),
                              ),
                              Text(
                                "Delete Product",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          )),
                        ),
                      )
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyProductDisplay(),));
                          
                        },
                        child: Container(
                          // color: Colors.white,
                          height: 230,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                              child: Column(
                            children: [
                              Container(
                                height: 170, width: 170,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/view.png"))),
                      
                                // child: Image.network("https://png.pngtree.com/png-clipart/20190517/original/pngtree-common-e-commerce-icon-car-purchase-png-image_4059419.jpg"),
                              ),
                              Text(
                                "View Product",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          )),
                        ),
                      ),
                      Container(
                        // color: Colors.white,
                        height: 230,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Card(
                            child: Column(
                          children: [
                            Container(
                              height: 170, width: 170,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/inve.png"))),

                              // child: Image.network("https://png.pngtree.com/png-clipart/20190517/original/pngtree-common-e-commerce-icon-car-purchase-png-image_4059419.jpg"),
                            ),
                            Text(
                              "View Inventory",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
