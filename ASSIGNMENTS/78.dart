import 'package:flutter/material.dart';
import 'package:myflutterapplcation/AssienmentModula3/background_change.dart';

class My78Example extends StatefulWidget {
  const My78Example({super.key});

  @override
  State<My78Example> createState() => _My78ExampleState();
}

class _My78ExampleState extends State<My78Example> {
  TextEditingController _nameController = TextEditingController();
  String? result;
  List nameList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter the name",
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  result = _nameController.text.toString();

                  nameList.add(result);
                });
              },
              child: Text("Submit"),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: nameList.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 40,
              shadowColor: Colors.lightBlue,
              child: ListTile(
                title: Text("${nameList[index]}"),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {
                          if (result != null) {
                            nameList[index].setName(result);
                            setState(() {});
                          }
                        },
                        icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            nameList.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
