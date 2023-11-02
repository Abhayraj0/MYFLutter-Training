import 'package:flutter/material.dart';

class MyImagesAss extends StatelessWidget {
  const MyImagesAss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images Example Assignment'),
        backgroundColor: Colors.yellowAccent,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            child: Image.asset(
              'assets/images/campground.jpeg',
              fit: BoxFit.fill,
              height: 200,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.01,
                right: MediaQuery.of(context).size.width * 0.01),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'oeschinensee mountain campground',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Kandersteg Switzerland',
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_purple500,
                      size: 40,
                      color: Colors.red,
                    ),
                    Text(
                      '41',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Colors.blue,
                  ),
                  Text(
                    'Call',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.send_sharp,
                    size: 30,
                    color: Colors.blue,
                  ),
                  Text(
                    'Send',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share_sharp,
                    size: 30,
                    color: Colors.blue,
                  ),
                  Text(
                    'share',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        const  SizedBox(
            height: 30,
          ),
          Container(
            padding:const EdgeInsets.all(20),
            height: 300,
            width: double.infinity,
            child: const Text(
                'Oeschinen Lake (German: Oeschinensee) is a lake in the Bernese Oberland, Switzerland, 4 kilometres (2.5 mi) east of Kandersteg in the Oeschinen valley. At an elevation of 1,578 metres (5,177 ft), it has a surface area of 1.1147 square kilometres (0.4304 sq mi). Its maximum depth is 56 metres 184 ftThe lake was created by a giant landslide and is fed through a series of mountain creeks and drains underground. The water then resurfaces as the Oeschibach. Part of it is captured for electricity production and as water supply for Kandersteg.In observations from 1931 to 1965, the elevation of the lake surface varied between 1,566.09 metres (5,138.1 ft) and 1,581.9 metres (5,190 ft). The average seasonal variation was 12.2 metres (40 ft) (September/April).The lake is generally frozen during five months, from December to May. From time to time ice skating is possible on the ice.Fish in the lake include Arctic char (Seesaibling), lake trout (Kanadische Seeforelle), rainbow trout (Regenbogenforelle). From January to March, ice fishing is popular.A gondola lift from Kandersteg leads to Oeschinen, 25 minutes by foot from the lake.Since 2007 the lake is part of the Jungfrau-Aletsch-Bietschhorn UNESCO World Heritage Site.As of summer 2021, a circumnavigation of Lake Oeschinen is not possible. The reason for this is the danger of an imminent rockfall on the south shore, which is why paths are closed there.[1]',
                textAlign: TextAlign.justify,
                ),
          ),
        ]),
      ),
    );
  }
}
