import 'package:flutter/material.dart';

class anCard extends StatelessWidget {
  const anCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.5)),
      margin: EdgeInsets.symmetric(vertical: 120, horizontal: 10),
      color: Color(0xffFFEB50),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.5),
              child: Image.asset('assets/images/card_pubg.png'),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 1, 2, 1),
            child: Text(
              'Classic Squad - Match #1350',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(20, 1, 2, 1),
            child: Text(
              'TIme: 21-OCT-2021 at 16:00',
              style: TextStyle(
                color: Color(0xff6B6A6A),
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(2),
            child: Row(
              children: [
                Container(
                  child: Row(children: [
                    Icon(Icons.home),
                    //Image.asset('assets/icons/'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PRIZE POOL',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "£150",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Row(children: [
                    Icon(Icons.home),
                    //Image.asset('assets/icons/'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'KILL',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "7",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Row(children: [
                    //Image.asset('assets/icons/'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'MAP',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "ERANGLE",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Row(children: [
                    //Image.asset('assets/icons/'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PLAY FOR',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          "50",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(2),
            child: Row(
              children: [
                Container(
                  child: Row(
                    //Image.asset('assets/icons/'),
                    children: [
                      Icon(Icons.home),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'TYPE',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "SQUAD",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Row(
                    //Image.asset('assets/icons/'),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'VERSION',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            "CLASSIC",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1, horizontal: 142),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'WATCH',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.play_circle,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          //To add Container(),
        ],
      ),
    );
  }
}
