import 'package:flutter/material.dart';

class paymentSaved extends StatelessWidget {
  const paymentSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        elevation: 0,
        backgroundColor: const Color(0xff242427),
        title: const Text(
          'Payment Saved',
          style: TextStyle(fontSize: 22.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15.0))),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const Text(
                'Success!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xff373A6C),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
              child: const Text(
                'Your payment has been saved. Continue on to see our membership plans.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
              child: Image.asset('assets/images/payment_saved.png'),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xff242427),
                  ),
                ),
                onPressed: () {
                  print('PRessed');
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 60),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
