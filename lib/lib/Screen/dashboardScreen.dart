import 'package:flutter/material.dart';
import 'package:todoapplication/Database/Model.dart/note.dart';
import 'package:todoapplication/Database/db_helper.dart';
import 'package:todoapplication/Screen/display.dart';
import 'package:todoapplication/Screen/noteUpdate.dart';
import 'package:todoapplication/Screen/noteadd.dart';

class MyDashboardScreen extends StatefulWidget {
  const MyDashboardScreen({super.key});

  @override
  State<MyDashboardScreen> createState() => _MyDashboardScreenState();
}

class _MyDashboardScreenState extends State<MyDashboardScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataDisplay();
  }

  String? keyword = '';
  List<NoteModel> notelist = <NoteModel>[];
  var noteService = DatabaseConnection();
  getDataDisplay() async {
    var userA = await noteService.displayNote();
    userA.forEach((rawData) {
      setState(() {
        var noteModel = NoteModel();
        noteModel.id = rawData['id'];
        noteModel.name = rawData['name'];
        noteModel.desc = rawData['desc'];

        notelist.add(noteModel);
      });
    });
  }

  List<NoteModel>? secondList;
  Future<void> searchData(String? searchD) async {
    setState(() {
      keyword = searchD;
    });
    setState(() {
      if (keyword!.isEmpty) {
        secondList = List.from(notelist);
      } else {
        secondList = notelist
            .where((element) =>
                element.name!.toLowerCase().contains(keyword!.toLowerCase()))
            .toList();
      }
    });
  }

  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: !isVisible
            ? Text("DashBoard Screen")
            : TextField(
                onChanged: (value) {
                  searchData(value);
                },
                decoration: InputDecoration(
                    hintText: "Search the item...",
                    prefixIcon: Icon(Icons.search)),
              ),
        actions: [
          isVisible
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      isVisible = false;
                    });
                  },
                )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = true;
                    });
                  },
                  icon: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemCount: keyword!.length == 0 ? notelist.length : secondList!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(12),
              color: Colors.blueGrey,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyNoteDisplay(
                                    desc: notelist[index].desc,
                                    name: notelist[index].name,
                                  ),
                                ));
                          },
                          child: keyword!.length == 0
                              ? Text(
                                  "Name Display : ${notelist[index].name}",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                )
                              : Text(
                                  "Name Display : ${secondList![index].name}",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                )),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MyNonteEdit(noteModel: notelist[index]),
                              ));
                        },
                        icon: Icon(
                          Icons.edit,
                          size: 40,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {
                          setState(() async {
                            var noteModel = NoteModel();
                            var db = DatabaseConnection();

                            noteModel.id = notelist[index].id;
                            var re = await db.deleteNote(noteModel);
                            print("Successfully Deleted : $re");
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyDashboardScreen(),
                                ));
                          });
                        },
                        icon: Icon(
                          Icons.delete,
                          size: 40,
                          color: Colors.red,
                        ))
                  ]),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyNonteAdd(),
                ));
          },
          child: Icon(Icons.add)),
    );
  }
}
