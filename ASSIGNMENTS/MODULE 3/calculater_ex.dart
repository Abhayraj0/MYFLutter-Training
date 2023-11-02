import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

TextEditingController numaber1controller = new TextEditingController();
TextEditingController numaber2controller = new TextEditingController();
String? result = "0";

enum MyCalcu { add, sub, mul, div }

class _MyCalculatorState extends State<MyCalculator> {
  MyCalcu myCalcu = MyCalcu.add;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculater Example ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 20,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(top: 100, left: 40, right: 40),
          child: Column(children: [
            TextFormField(
              controller: numaber1controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the number 1',
                label: Text('Frist Number'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: numaber2controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter the number 2',
                labelText: 'Second Number',
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ListTile(
              title: Text("Additaion"),
              trailing: Radio(
                  value: MyCalcu.add,
                  groupValue: myCalcu,
                  onChanged: (value) {
                    setState(() {
                      myCalcu = value!;
                      additionA(context);
                    });
                    
                  }),
            ),
            ListTile(
              title: Text("Subtraction"),
              trailing: Radio(
                  value: MyCalcu.sub,
                  groupValue: myCalcu,
                  onChanged: (value) {
                    setState(() {
                      myCalcu = value!;
                      substracationA(context);
                    });
                  }),
            ),
            ListTile(
              title: Text("Multipilication"),
              trailing: Radio(
                  value: MyCalcu.mul,
                  groupValue: myCalcu,
                  onChanged: (value) {
                    setState(() {
                      myCalcu = value!;
                      multiplicationA(context);
                    });
                  }),
            ),
            ListTile(
              title: Text("Division"),
              trailing: Radio(
                  value: MyCalcu.div,
                  groupValue: myCalcu,
                  onChanged: (value) {
                    setState(() {
                      myCalcu = value!;
                      divisionA(context);
                    });
                  }),
            ),

            const SizedBox(
              height: 40,
            ),
            Text('Result : $result')
          ]),
        ),
      ),
    );
  }

  void additionA(BuildContext context) {
    setState(() {
      int nu1 = int.parse(numaber1controller.text);
      int num2 =    int.parse(numaber2controller.text);
      result = (nu1 + num2).toString();
    });
  }
  void substracationA(BuildContext context) {
    setState(() {
      int nu1 = int.parse(numaber1controller.text);
      int num2 =    int.parse(numaber2controller.text);
      result = (nu1 - num2).toString();
    });
  }
  void divisionA(BuildContext context) {
    setState(() {
      int nu1 = int.parse(numaber1controller.text);
      int num2 = int.parse(numaber2controller.text);
      result = (nu1 / num2).toString();
    });
  }
  void multiplicationA(BuildContext context) {
    setState(() {
      int nu1 = int.parse(numaber1controller.text);
      int num2 =    int.parse(numaber2controller.text);
      result = (nu1 * num2).toString();
    });
  }
}
