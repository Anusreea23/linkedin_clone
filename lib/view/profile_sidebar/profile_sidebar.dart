import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSidebar extends StatelessWidget {
  const ProfileSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("anusree"),
              accountEmail: Text("anusree@gmail.com"))
        ],
      ),
    );
  }
}
