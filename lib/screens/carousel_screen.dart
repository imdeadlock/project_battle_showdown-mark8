import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_mark1/main.dart';
import 'package:project_mark1/screens/login_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

int actindex = 0;

class CarouselScreen extends StatefulWidget {
  const CarouselScreen({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        elevation: 0,
        backgroundColor: const Color(0xff242427),
        title: const Text(
          'Start Your Journey',
          style: TextStyle(fontSize: 22.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CarouselSlider(
                    items: [
                      Image.asset('assets/images/carousel_1.png'),
                      Image.asset('assets/images/carousel_2.png'),
                      Image.asset('assets/images/carousel_3.png'),
                      Image.asset('assets/images/carousel_4.png'),
                    ],
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      reverse: false,
                      initialPage: 0,
                      onPageChanged: (index, reason) =>
                          setState(() => actindex = index),
                    ),
                  ),
                ]),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Indicator(),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    CarouselSlider(
                      items: [
                        Text(
                          'Play And Earn Money',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'Played by 1000+ Users',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'Join And Play',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          'Collect Points and Earn',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        reverse: false,
                        initialPage: 0,
                        onPageChanged: (index, reason) =>
                            setState(() => actindex = index),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const LoginScreen())),
                      child: Text('Start'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Indicator() => AnimatedSmoothIndicator(
        activeIndex: 0,
        count: 4,
        effect: ExpandingDotsEffect(),
      );
}
