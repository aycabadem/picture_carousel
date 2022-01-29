import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _imagePaths = [
    'images/day1.jpeg',
    'images/day2.jpeg',
    'images/day3.jpeg',
    'images/day4.jpeg',
    'images/day5.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFBCAFF),
          title: Text('Picture Carousel'),
        ),
        body: Container(
          color: Color(0xFFFDEBF7),
          child: Center(
            child: SafeArea(
              child: CarouselSlider(
                  options: CarouselOptions(autoPlay: true),
                  items: _imagePaths.map((imagePath) {
                    return Builder(builder: (context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ));
                    });
                  }).toList()),
            ),
          ),
        ),
      ),
    );
  }
}
