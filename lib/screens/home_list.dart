import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:project_mark1/screens/homepage_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

int actindex = 0;

class HomeList extends StatefulWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        elevation: 0,
        backgroundColor: const Color(0xff242427),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(70, 20, 10, 60),
            child: const Text(
              'Announcement',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(40, 10, 100, 5),
            child: const Text(
              'Genres',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: CarouselSlider(
              items: [
                cardPubg(),
                cardSec(),
              ],
              options: CarouselOptions(
                autoPlay: false,
                enableInfiniteScroll: false,
                reverse: false,
                onPageChanged: (index, reason) =>
                    setState(() => actindex = index),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Indicator(),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 40),
            child: Text(
              'Featured Games',
              style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  //for border radius
                  child: Image.asset('assets/images/l1.png'),
                  borderRadius: BorderRadius.circular(40.5),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(2, 1, 200, 1),
                    child: Text(
                      'PUBG MOBILE',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 1, 210, 1),
                  child: Text(
                    'NEW STATE',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                ClipRRect(
                  child: Image.asset('assets/images/l2.png'),
                  borderRadius: BorderRadius.circular(40.5),
                ),
                Text(
                  'FREEFIRE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'GARENA',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                ClipRRect(
                    child: Image.asset('assets/images/l3.png'),
                    borderRadius: BorderRadius.circular(40.0)),
                Text(
                  'Clash of Clans',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'SUPERCELL',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                    child: Image.asset('assets/images/l4.png'),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12.5)),
                ),
                Text(
                  'Ori and the Will of the Wisps',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Cross-Platform',
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              print('lmao');
            },
            splashColor: Colors.grey,
            child: Container(
              height: 70,
              padding: EdgeInsets.fromLTRB(20, 1, 200, 1),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: const Color(0xff242427),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Go to Games',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Container(
          //   width: 300,
          //   height: 80,
          //   padding: new EdgeInsets.fromLTRB(10, 1, 150, 1),
          //   child: Card(
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(15.0),
          //     ),
          //     color: new Color(0xff242427),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //           'Go to Games',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 16,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 10, 70, 10),
            child: Text(
              'Multiplayer Games',
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: CarouselSlider(
              items: [
                cardGear(),
                cardKof(),
              ],
              options: CarouselOptions(
                autoPlay: false,
                enableInfiniteScroll: false,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Indicator() => AnimatedSmoothIndicator(
        activeIndex: actindex,
        count: 3,
        effect: ExpandingDotsEffect(
          dotColor: Colors.grey,
          activeDotColor: Colors.black,
        ),
      );
}

class cardGear extends StatelessWidget {
  const cardGear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: const Color(0xff242427),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/gear_of_war.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Mobile Games',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class cardKof extends StatelessWidget {
  const cardKof({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 200,
          padding: new EdgeInsets.all(15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.greenAccent,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/gear_of_war.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Nintendo Games',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class cardPubg extends StatelessWidget {
  const cardPubg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: const Color(0xff242427),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/gear_of_war.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            'Play & Earn',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class cardSec extends StatelessWidget {
  const cardSec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: const Color(0xff6D5ED2),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/gear_of_war.png',
                  fit: BoxFit.fitHeight,
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            'Nintendo Games',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
