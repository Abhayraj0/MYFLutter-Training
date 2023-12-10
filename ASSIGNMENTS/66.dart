import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class My66Example extends StatefulWidget {
  const My66Example({super.key});

  @override
  State<My66Example> createState() => _My66ExampleState();
}

class _My66ExampleState extends State<My66Example> {
  TextEditingController _dateController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateController.text = ''; //set the initial value of text field
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Picker Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: TextField(
            controller: _dateController,
            decoration: InputDecoration(
                hintText: "Enter the Date",
                prefixIcon: Icon(Icons.calendar_today)),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101));
              if (pickedDate != null) {
                print(pickedDate);
                String? formentDate =
                    DateFormat('dd-MM-yyyy').format(pickedDate);
                print("Your new Forment Date = ");
                print(formentDate);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                  formentDate,
                  style: TextStyle(fontSize: 40),
                )));

                setState(() {
                  _dateController.text = formentDate;
                });
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                  "You are not selected date",
                  style: TextStyle(fontSize: 40),
                )));
              }
            },
          ),
        ),
      ),
    );
  }
}
