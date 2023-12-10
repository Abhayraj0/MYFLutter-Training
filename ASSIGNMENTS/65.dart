import 'package:flutter/material.dart';

class MyAlertColse extends StatefulWidget {
  const MyAlertColse({super.key});

  @override
  State<MyAlertColse> createState() => _MyAlertColseState();
}

class _MyAlertColseState extends State<MyAlertColse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colse Application in Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          setState(() {
            alertExit();
          });
        },
        child: Text("Colse"),),
      ),
    );
  }


  alertExit() {
    AlertDialog alertDi = AlertDialog(
      title: Text("Exit"),
      content: Text("You want colse the application"),
      actions: [
        ElevatedButton(onPressed: (){
          setState(() {
            Navigator.pop(context, true);
          });
        }, child: Text("Yes")),
        ElevatedButton(onPressed: (){
          setState(() {
            Navigator.pop(context, false);
          });
        }, child: Text("No")),

      ],
    );
    showDialog(context: context, builder: (context) => alertDi,);
  }

}