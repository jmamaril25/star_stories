import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: ImageCarousel(),
      backgroundColor: Colors.black87,
    );
  }
}

class ImageCarousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        height: MediaQuery.of(context).size.height,
        items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 75.0, horizontal: 10.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    gradient: new LinearGradient(
                      colors: [Color(0xFF631170), Color(0xFF5043C5)],
                        begin: Alignment.bottomLeft,
                        end: new Alignment(0, -1)
                    ),
                    borderRadius: new BorderRadius.all(new Radius.circular(20.0))
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }
}