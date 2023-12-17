import 'package:flutter/material.dart';
import 'package:login/login.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});


  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: 0,
      animationDuration: Duration(milliseconds: 3),
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(isScrollable: true, tabs: [
            Tab(
              child: Text('Gujarat', style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Rajshthan', style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Delhi', style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Uttrakhand', style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Jammu and Kashmir',
                  style: TextStyle(color: Colors.white)),
            ),
            Tab(
              child: Text('Maharashtra', style: TextStyle(color: Colors.white)),
            )
          ]),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyLogin()));
              },
              icon: Icon(
                Icons.person,
                color: Colors.amber,
              )),
          title: Text('Home page',
              style: TextStyle(fontSize: 20, color: Colors.white)),
          backgroundColor: Colors.tealAccent,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_sharp,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white)),
          ],
          elevation: 20,
          shadowColor: Theme.of(context).shadowColor,
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text(
              'Hello',
              style: TextStyle(fontSize: 60),
            )),
            Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        containerImage(),
                        containerImage(),
                        containerImage(),
                        containerImage(),
                        containerImage(),
                      ]),
                ),
              ],
            ),
            Container(
              child: Icon(
                Icons.person,
                color: Colors.blueAccent,
                size: 60,
              ),
            ),
            Container(
              child: Icon(
                Icons.call,
                color: Colors.blueAccent,
                size: 60,
              ),
            ),
            PageView.builder(
              itemBuilder: (context, index) {
                return Card();
              },
            )
          ],
        ),
      ),
    );
  }

  Widget containerImage() {
    return Card(
      color: Colors.amber,
      child: Container(
        decoration: BoxDecoration(
            // border: Border.all(
            //     width: 4, color: Colors.deepPurple, style: BorderStyle.solid),
            image: DecorationImage(
          image: AssetImage('assets/james.jpeg'),
        )),
        height: 300,
        width: double.infinity,
      ),
    );
  }
}
