import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_clone/view/home_screen/home_screen.dart';
import 'package:linkedin_clone/view/job_screen/job_screen.dart';
import 'package:linkedin_clone/view/network_screen/network_screen.dart';
import 'package:linkedin_clone/view/notification_screen/notification_screen.dart';
import 'package:linkedin_clone/view/video_screen/video_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final List<Widget> children = [
    HomeScreen(),
    VideoScreen(),
    NetworkScreen(),
    NotificationScreen(),
    JobScreen(),
  ];
  void onTapped(int index) {
    if (index == 2) ;
    // Navigator.push(
    //     context, MaterialPageRoute(builder: (context) => NetworkScreen()));
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 22,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        onTap: onTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.house_fill,
                size: 25,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.video,
                size: 25,
              ),
              label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userGroup,
                size: 25,
              ),
              label: "My Network"),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.bell_fill,
                size: 25,
              ),
              label: "Notifications"),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.briefcase,
                size: 25,
              ),
              label: "Jobs"),
        ],
      ),
      body: children[currentIndex],
    );
  }
}
