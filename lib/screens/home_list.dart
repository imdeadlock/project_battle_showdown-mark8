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
      body: ListView(children: [
        Container(
          padding: EdgeInsets.fromLTRB(70, 20, 10, 60),
          child: Text(
            'Announcement',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(40, 10, 100, 5),
          child: Text(
            'Genres',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
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
            children: [
              ClipRRect(
                //for border radius
                child: Image.asset('assets/images/l1.png'),
                borderRadius: BorderRadius.circular(40.5),
              ),
              Text(
                'PUBG MOBILE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'NEW STATE',
                textAlign: TextAlign.left,
              ),
            ],
          ),
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
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => HomePage())),
                child: Text(
                  'Go To Games ->',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
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
        )
      ]),
    );
  }

  Widget Indicator() => AnimatedSmoothIndicator(
        activeIndex: actindex,
        count: 4,
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
          width: MediaQuery.of(context).size.width / 1,
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
                  fit: BoxFit.fitHeight,
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
          padding: new EdgeInsets.all(15),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.green[300],
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
