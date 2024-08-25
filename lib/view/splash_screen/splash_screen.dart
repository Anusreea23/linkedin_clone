import 'package:flutter/material.dart';
import 'package:linkedin_clone/utils/image_constants.dart';
import 'package:linkedin_clone/view/home_screen/home_screen.dart';

import 'package:linkedin_clone/view/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          ImageConstants.Logo,
          scale: 5,
        ),
      ),
    );
  }
}
