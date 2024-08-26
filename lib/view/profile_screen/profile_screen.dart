import 'package:flutter/material.dart';
import 'package:linkedin_clone/dummydb.dart';
import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e6df),
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: ListView(children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.amber,
                ),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.blue)),
                        child: Text("open to")),
                    SizedBox(
                      width: 30,
                    ),
                    TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Colors.blue)),
                        child: Text("Add section")),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.more_horiz),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    child: Text("Enhance profile"))
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
