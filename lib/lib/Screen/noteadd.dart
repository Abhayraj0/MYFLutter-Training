import 'package:flutter/material.dart';
import 'package:todoapplication/Database/Model.dart/note.dart';
import 'package:todoapplication/Database/db_helper.dart';
import 'package:todoapplication/Screen/dashboardScreen.dart';

class MyNonteAdd extends StatefulWidget {
  const MyNonteAdd({super.key});

  @override
  State<MyNonteAdd> createState() => _MyNonteAddState();
}

class _MyNonteAddState extends State<MyNonteAdd> {
  TextEditingController _noteAdd = TextEditingController();
  TextEditingController _descAdd = TextEditingController();
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
            "Note Add",
            textAlign: TextAlign.justify,
          ),
          backgroundColor: Colors.orangeAccent,
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
                      controller: _noteAdd,
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
                      controller: _descAdd,
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
                            var noteData = DatabaseConnection();

                            noteModel.name = _noteAdd.text;
                            noteModel.desc = _descAdd.text;

                            var result = await noteData.insertData(noteModel);
                            print("Your Result is : $result");
                            _noteAdd.clear();
                            _descAdd.clear();
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyDashboardScreen(),
                                ));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange.withOpacity(.8)),
                        child: Text(
                          "Submit",
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
