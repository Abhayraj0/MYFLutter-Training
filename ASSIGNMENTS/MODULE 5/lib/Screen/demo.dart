import 'package:flutter/material.dart';

class MyTimeDemo extends StatefulWidget {
  const MyTimeDemo({super.key});

  @override
  State<MyTimeDemo> createState() => _MyTimeDemoState();
}

class _MyTimeDemoState extends State<MyTimeDemo> {
  final _timeCOm = TextEditingController();

  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
        
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timeCOm.text != _time;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: _timeCOm,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.timelapse),
              hintText: "${_time.format(context)}"
              ),
          readOnly: true,
          onTap: ()=> _selectTime(),
        ),
      ),
    );
  }
}
