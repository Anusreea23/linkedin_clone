import 'package:flutter/material.dart';
import 'package:linkedin_clone/view/custom_tabbar/custom_tabbar.dart';
import 'package:linkedin_clone/view/home_screen/home_screen.dart';
import 'package:linkedin_clone/view/main_page/main_page.dart';
import 'package:linkedin_clone/view/network_screen/network_screen.dart';
import 'package:linkedin_clone/view/notification_screen/notification_screen.dart';
import 'package:linkedin_clone/view/splash_screen/splash_screen.dart';
import 'package:linkedin_clone/view/video_screen/video_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
