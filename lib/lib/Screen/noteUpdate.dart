import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:todoapplication/Database/Model.dart/note.dart';
import 'package:todoapplication/Database/db_helper.dart';
import 'package:todoapplication/Screen/dashboardScreen.dart';

class MyNonteEdit extends StatefulWidget {
  NoteModel noteModel;
  MyNonteEdit({super.key, required this.noteModel});

  @override
  State<MyNonteEdit> createState() => _MyNonteEditState();
}

class _MyNonteEditState extends State<MyNonteEdit> {
  TextEditingController _noteEdit = TextEditingController();
  TextEditingController _descEdit = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _noteEdit.text = widget.noteModel.name!;
    _descEdit.text = widget.noteModel.desc!;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          title: Text(
            "Note Edit",
            textAlign: TextAlign.justify,
          ),
          backgroundColor: Colors.orangeAccent,
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                if (value == 'delete') {
                  Navigator.pop(context);
                }
              },
              itemBuilder: (context) {
                return [
                  // PopupMenuItem(child: Text("Edit"),value: 'edit',),
                  PopupMenuItem(
                    child: Text("Delete"),
                    value: 'delete',
                  ),
                ];
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                height: 450,
                width: 500,
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: Column(
                  children: [
                    TextFormField(
                      controller: _noteEdit,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.topic_sharp),
                          hintText: "Enter the topic name...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _descEdit,
                      maxLines: 7,
                      scrollPhysics: BouncingScrollPhysics(),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.description_sharp),
                          hintText: "Enter the Description...",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(19))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() async {
                            var noteModel = NoteModel();
                            var db = DatabaseConnection();
          
                            noteModel.id = widget.noteModel.id;
                            noteModel.name = _noteEdit.text;
                            noteModel.desc = _descEdit.text;
          
                            var res = await db.updateNote(noteModel);
                            print("Successfully updated : $res");
                            _noteEdit.clear();
                            _descEdit.clear();
          
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyDashboardScreen(),));
          
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.withOpacity(.8)),
                        child: Text(
                          "Update",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
