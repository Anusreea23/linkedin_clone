import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_clone/view/home_screen/home_screen.dart';
import 'package:linkedin_clone/view/network_screen/network_screen.dart';
import 'package:linkedin_clone/view/notification_screen/notification_screen.dart';

class CustomBottomnavbar extends StatefulWidget {
  const CustomBottomnavbar({super.key});

  @override
  State<CustomBottomnavbar> createState() => _CustomBottomnavbar();
}

class _CustomBottomnavbar extends State<CustomBottomnavbar> {
  int currentIndex = 0;
  final List<Widget> children = [
    HomeScreen(),
    NetworkScreen(),
    NotificationScreen(),
  ];
  void onTapped(int index) {
    if (index == 2) ;
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
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
