import 'package:flutter/material.dart';
import 'package:project_mark1/screens/card.dart';
import 'package:project_mark1/screens/carousel_screen.dart';
import 'package:project_mark1/screens/credential_screen.dart';
import 'package:project_mark1/screens/home_list.dart';
import 'package:project_mark1/screens/payment_complete.dart';
import 'package:project_mark1/screens/test.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.asset('assets/images/new.jpg'),
      )),
    );
  }

  // Navigate to LoginScreen
  void _navigateHome() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (_) => const HomePageScreen())); //const CarouselScreen(),
  }
}
