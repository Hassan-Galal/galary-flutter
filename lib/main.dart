import 'dart:ui';

import 'package:flutter/material.dart';

/*import 'assets/imgs/img7.jpeg';
import 'assets/imgs/img1.jpeg';
import 'assets/imgs/img2.jpeg';
import 'assets/imgs/img3.jpeg';
import 'assets/imgs/img4.jpeg';
import 'assets/imgs/img5.jpeg';
import 'assets/imgs/img6.jpeg';
*/
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imgspaths = [
    'assets/imgs/img7.jpeg',
    'assets/imgs/img1.jpeg',
    'assets/imgs/img2.jpeg',
    'assets/imgs/img3.jpeg',
    'assets/imgs/img4.jpeg',
    'assets/imgs/img5.jpeg',
    'assets/imgs/img6.jpeg'
  ];
  int imgindex = 0;
  void nextImg() {
    setState(() {
      if (imgindex < imgspaths.length - 1) imgindex++;
    });
  }

  void prevImg() {
    setState(() {
      if (imgindex > 0) imgindex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('silder'),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Text('Welcome to Galary'),
              Text('you can swap imgs by clicking buttons'),
              Image.asset(
                imgspaths[imgindex],
                height: 400,
                width: 400,
                fit: BoxFit.fitWidth,
              ),
              IconButton(
                icon: Icon(Icons.navigate_next),
                color: Colors.black87,
                onPressed: () {
                  nextImg();
                },
              ),
              IconButton(
                icon: Icon(Icons.navigate_before),
                color: Colors.black87,
                onPressed: () {
                  prevImg();
                },
              )
            ])));
  }
}
