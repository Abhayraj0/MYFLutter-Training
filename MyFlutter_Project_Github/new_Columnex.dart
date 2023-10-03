import 'package:flutter/material.dart';

class MyNewColumn extends StatelessWidget {
  const MyNewColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_sharp),
        title: Text('Column Example 2.'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '* CrossAxisAlignment',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 2,
          ),
          Row(children: [
            Column(
              children: [
                Center(
                  child: Text(
                    'start',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'center',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'end',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'stretch',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            )
          ]),
          SizedBox(
            height: 10,
          ),

          //// new project is MainAxisAlignMent in start
          ///
          Text(
            '* MainAxisAlignment',
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            Column(
              children: [
                Center(
                  child: Text(
                    'start',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'center',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Column(
              children: [
                Center(
                  child: Text(
                    'end',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          width: 2,
                          color: Colors.red,
                          style: BorderStyle.solid)),
                  height: 200,
                  width: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                                width: 2,
                                color: Color.fromARGB(171, 159, 57, 176),
                                style: BorderStyle.solid)),
                        child: Center(
                          child: Text(
                            "BOX",
                          ),
                        ),
                        height: 50,
                        width: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
          
          // second line........
          
          Column(
            children: [
              Row(children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        'spaceAround',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              width: 2,
                              color: Colors.red,
                              style: BorderStyle.solid)),
                      height: 200,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'spaceBetween',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              width: 2,
                              color: Colors.red,
                              style: BorderStyle.solid)),
                      height: 200,
                      width: 100,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        'spaceEvenly',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(
                              width: 2,
                              color: Colors.red,
                              style: BorderStyle.solid)),
                      height: 200,
                      width: 100,
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                border: Border.all(
                                    width: 2,
                                    color: Color.fromARGB(171, 159, 57, 176),
                                    style: BorderStyle.solid)),
                            child: Center(
                              child: Text(
                                "BOX",
                              ),
                            ),
                            height: 50,
                            width: 50,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
