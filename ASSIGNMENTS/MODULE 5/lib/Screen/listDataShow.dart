import 'package:flutter/material.dart';
import 'package:mysqfliteassignment/DatabaseAss/Modle/sqlAs.dart';
import 'package:mysqfliteassignment/DatabaseAss/serAss.dart';
import 'package:mysqfliteassignment/Screen/regiser.dart';
import 'package:mysqfliteassignment/Screen/update.dart';

class MyListDataShowAss extends StatefulWidget {
  const MyListDataShowAss({super.key});

  @override
  State<MyListDataShowAss> createState() => _MyListDataShowAssState();
}

class _MyListDataShowAssState extends State<MyListDataShowAss> {
  // is serach for textFiled
  bool isSearchBarVisibal = false;
  // search bar Example
  TextEditingController searachController = TextEditingController();

  // data from Database
  List<UserModelAss> myListAss = <UserModelAss>[];
  var _serviU = UserServiceAssignment();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataDbAss();
  }

  getDataDbAss() async {
    var userSer = await _serviU.displayData();
    myListAss = <UserModelAss>[];

    userSer.forEach((rawData) {
      setState(() {
        var _userModelAss = UserModelAss();
        _userModelAss.id = rawData['id'];
        _userModelAss.name = rawData['name'];
        _userModelAss.desc = rawData['desc'];
        _userModelAss.date = rawData['date'];
        _userModelAss.piyority = rawData['piyority'];

        myListAss.add(_userModelAss);
      });
    });
  }
  String? query = '';
  List searchList = [];
  void onQueryChange(String? newQuery) {
    setState(() {
      query = newQuery;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    myListAss.sort((a, b) => a.date!.compareTo(b.date.toString()));

    return Scaffold(
      appBar: AppBar(
        title: !isSearchBarVisibal
            ? Text("List Data Show")
            : TextField(
                controller: searachController,
                decoration: InputDecoration(
                    hintText: "Search the date...", icon: Icon(Icons.search)),
              ),
        automaticallyImplyLeading: false,
        actions: [
          isSearchBarVisibal
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isSearchBarVisibal = false;
                    });
                  },
                  icon: Icon(Icons.cancel))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isSearchBarVisibal = true;
                    });
                  },
                  icon: Icon(Icons.search)),
        ],
      ),
      body: ListView.builder(
        itemCount: myListAss.length,
        itemBuilder: (context, index) {
          String? priority = myListAss[index].piyority;
          return InkWell(
            onTap: () {},
            child: Column(
              children: [
                if (priority == "Low") ...[
                  Card(
                    color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name : ${myListAss[index].name}",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Description : ${myListAss[index].desc}",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "Date : ${myListAss[index].date}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Priority : ${myListAss[index].piyority}",
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyUpadateScreenAssignment(
                                          userModelAss: myListAss[index],
                                        ),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                label: Text(
                                  "Edit",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                )),
                            ElevatedButton.icon(
                                onPressed: () {
                                  var _userModel = UserModelAss();
                                  var _serviUser = UserServiceAssignment();
                                  setState(() {
                                    _userModel.id = myListAss[index].id;
                                  });
                                  _serviUser.deleteUser(_userModel);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyListDataShowAss(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 25,
                                ),
                                label: Text(
                                  "Delete",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.red),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ] else if (priority == "High") ...[
                  // Your widget2 here
                  Card(
                    color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name : ${myListAss[index].name}",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Description : ${myListAss[index].desc}",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "Date : ${myListAss[index].date}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Priority : ${myListAss[index].piyority}",
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyUpadateScreenAssignment(
                                          userModelAss: myListAss[index],
                                        ),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                label: Text(
                                  "Edit",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                )),
                            ElevatedButton.icon(
                                onPressed: () {
                                  var _userModel = UserModelAss();
                                  var _serviUser = UserServiceAssignment();
                                  setState(() {
                                    _userModel.id = myListAss[index].id;
                                  });
                                  _serviUser.deleteUser(_userModel);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyListDataShowAss(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 25,
                                ),
                                label: Text(
                                  "Delete",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.red),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ] else if (priority == "Medium") ...[
                  // Your widget3 here
                  Card(
                    color: Colors.blue,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name : ${myListAss[index].name}",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Description : ${myListAss[index].desc}",
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          "Date : ${myListAss[index].date}",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "Priority : ${myListAss[index].piyority}",
                          style: TextStyle(fontSize: 25),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyUpadateScreenAssignment(
                                          userModelAss: myListAss[index],
                                        ),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                label: Text(
                                  "Edit",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                )),
                            ElevatedButton.icon(
                                onPressed: () {
                                  var _userModel = UserModelAss();
                                  var _serviUser = UserServiceAssignment();
                                  setState(() {
                                    _userModel.id = myListAss[index].id;
                                  });
                                  _serviUser.deleteUser(_userModel);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MyListDataShowAss(),
                                      ));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey),
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                  size: 25,
                                ),
                                label: Text(
                                  "Delete",
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.red),
                                )),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyRegisterScreen(),
                ));
          },
          child: Icon(Icons.add)),
    );
  }

  // cardExmple({Color? colorPi}) {
  //   return Card(
  //     color: Colors.red,
  //     child: Column(
  //       children: [
  //         Text(
  //           "Name : ${myListAss[index].name}",
  //           style: TextStyle(fontSize: 30),
  //         ),
  //         Text(
  //           "Description : ${myListAss[index].desc}",
  //           style: TextStyle(fontSize: 25),
  //         ),
  //         Text(
  //           "Date : ${myListAss[index].date}",
  //           style: TextStyle(fontSize: 20),
  //         ),
  //         Text(
  //           "Priority : ${myListAss[index].piyority}",
  //           style: TextStyle(fontSize: 25),
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             ElevatedButton.icon(
  //                 onPressed: () {
  //                   Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                         builder: (context) => MyUpadateScreenAssignment(
  //                           userModelAss: myListAss[index],
  //                         ),
  //                       ));
  //                 },
  //                 style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
  //                 icon: Icon(
  //                   Icons.edit,
  //                   color: Colors.white,
  //                   size: 25,
  //                 ),
  //                 label: Text(
  //                   "Edit",
  //                   style: TextStyle(fontSize: 25, color: Colors.white),
  //                 )),
  //             ElevatedButton.icon(
  //                 onPressed: () {
  //                   var _userModel = UserModelAss();
  //                   var _serviUser = UserServiceAssignment();
  //                   setState(() {
  //                     _userModel.id = myListAss[index].id;
  //                   });
  //                   _serviUser.deleteUser(_userModel);
  //                   Navigator.push(
  //                       context,
  //                       MaterialPageRoute(
  //                         builder: (context) => MyListDataShowAss(),
  //                       ));
  //                 },
  //                 style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
  //                 icon: Icon(
  //                   Icons.delete,
  //                   color: Colors.red,
  //                   size: 25,
  //                 ),
  //                 label: Text(
  //                   "Delete",
  //                   style: TextStyle(fontSize: 25, color: Colors.red),
  //                 )),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
