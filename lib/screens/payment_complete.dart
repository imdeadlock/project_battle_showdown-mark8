import 'package:flutter/material.dart';
import 'package:project_mark1/screens/splash_screen.dart';

class paymentComplete extends StatelessWidget {
  const paymentComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        elevation: 0,
        backgroundColor: const Color(0xff242427),
        title: const Text(
          'Payment Complete',
          style: TextStyle(fontSize: 22.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: const Text(
              "You're All Set",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            ),
            child: Text(
              'Enjoy all of the perks of Gem for 14 days free! Continue to the dashboard or go back.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff242427)),
            child: SizedBox(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Image.asset('assets/images/payment_complete.png'),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Color(0xff242427),
                ),
              ),
              onPressed: () {},
              child: Text('Go to Dashboard'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: InkWell(
              onTap: () {},
              child: Text('Go Back'),
            ),
          ),
        ],
      ),
    );
  }
}
