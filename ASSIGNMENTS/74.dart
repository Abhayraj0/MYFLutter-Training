import 'package:flutter/material.dart';
import 'package:myflutterapplcation/Assignment%20Modula4/74_second.dart';

class My74Example extends StatefulWidget {
  const My74Example({super.key});

  @override
  State<My74Example> createState() => _My74ExampleState();
}

class _My74ExampleState extends State<My74Example> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Redirect User Activity Example"),
        backgroundColor: Colors.purple[100],

        ),
        body: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the Name",
                    labelText: "Name"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  var result = _nameController.text.toString();
                  print(result);
    
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => My72Second(name: result),
                      ));
                },
                child: Text("Submit")),
          ]),
        ),
      ),
    );
  }
}
