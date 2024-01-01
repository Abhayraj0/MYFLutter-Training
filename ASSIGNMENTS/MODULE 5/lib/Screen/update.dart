import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mysqfliteassignment/DatabaseAss/Modle/sqlAs.dart';
import 'package:mysqfliteassignment/DatabaseAss/serAss.dart';
import 'package:mysqfliteassignment/Screen/listDataShow.dart';

class MyUpadateScreenAssignment extends StatefulWidget {
  UserModelAss userModelAss;
  MyUpadateScreenAssignment({required this.userModelAss});

  @override
  State<MyUpadateScreenAssignment> createState() =>
      _MyUpadateScreenAssignmentState();
}

class _MyUpadateScreenAssignmentState extends State<MyUpadateScreenAssignment> {
  String? dropdownValue = "High";
  final _nameCon = TextEditingController();
  final _descCon = TextEditingController();
  final _dateCon = TextEditingController();
  final _piyority = TextEditingController();
  List<String> piyority = ['High', 'Medium', 'Low'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dateCon.text = '';
    _nameCon.text = widget.userModelAss.name!;
    _descCon.text = widget.userModelAss.desc!;
    _dateCon.text = widget.userModelAss.date!;
    dropdownValue = widget.userModelAss.piyority!;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("edit screen"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              color: Colors.purple.withOpacity(.2),
              elevation: 70,
              shadowColor: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(children: [
                  TextField(
                    controller: _nameCon,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Enter the Name",
                        labelText: "Name"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _descCon,
                    decoration: InputDecoration(
                      hintText: "Enter the desc",
                      labelText: "Description",
                      prefixIcon: Icon(Icons.description),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _dateCon,
                    decoration: InputDecoration(
                      hintText: "Enter the date",
                      prefixIcon: Icon(Icons.date_range),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1999),
                          lastDate: DateTime(2050));
                      if (pickedDate != null) {
                        String formentDate =
                            DateFormat('MM/dd/yyyy').format(pickedDate);
                          
                        setState(() {
                          _dateCon.text = formentDate;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _piyority,
                    decoration: InputDecoration(
                      labelText: 'Select an item',
                      suffixIcon: DropdownButtonFormField(
                        value: dropdownValue,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.priority_high),
                            border: InputBorder.none),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: piyority
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() async {
                          var _userModel = UserModelAss();
                          var _serviUser = UserServiceAssignment();

                          _userModel.id = widget.userModelAss.id;
                          _userModel.name = _nameCon.text;
                          _userModel.desc = _descCon.text;
                          _userModel.date = _dateCon.text;
                          _userModel.piyority = dropdownValue;

                          var result = await _serviUser.updateUser(_userModel);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MyListDataShowAss(),));

                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey),
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 30, color: Colors.white54),
                      ))
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }


 
}
