import 'package:flutter/material.dart';

class MyNewRowColumn extends StatelessWidget {
  const MyNewRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row and Column Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  rowandcolumEx(textName: "ID"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Header:1", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:2", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:3", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:4", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:5", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:6", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:7", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:8", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:9", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:10", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:11", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:12", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:13", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:14", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:15", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:16", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:17", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:18", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:19", boxColor: Colors.green),
                      rowandcolumEx(
                          textName: "Header:20", boxColor: Colors.green),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "0", boxColor: Colors.purple),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.purple),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.purple),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "1"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: '2'),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "3"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "4"),
                 SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "5"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "6"),
                 SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "7"),
                 SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "0"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "8"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "9"),
                 SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
              Row(
                children: [
                  rowandcolumEx(textName: "10"),
                  SingleChildScrollView(
                    child: Row(children: [
                      rowandcolumEx(
                          textName: "Column:1", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:2", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:3", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:4", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:5", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:6", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:7", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:8", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:9", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:10", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:11", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:12", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:13", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:14", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:15", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:16", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:17", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:18", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:19", boxColor: Colors.white),
                      rowandcolumEx(
                          textName: "Column:20", boxColor: Colors.white),
                    ]),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Widget rowandcolumEx({textName, boxColor = Colors.amber}) {
    return Container(
      decoration: BoxDecoration(
          color: boxColor,
          border: Border.all(
              width: 2, color: Colors.black, style: BorderStyle.solid)),
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Text(textName,
            style: TextStyle(fontSize: 15), textAlign: TextAlign.center),
      ),
      height: 80,
      width: 100,
    );
  }
}
