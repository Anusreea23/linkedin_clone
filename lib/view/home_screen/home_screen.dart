import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:linkedin_clone/dummydb.dart';

import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final post = Dummydb.postlist;
  bool showAppNavbar = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffe8e6df),
        body: Column(
          children: [
            Container(
              child: Column(
                children: [
                  CustomAppbar(),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: Dummydb.postlist.length,
                  itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        margin: EdgeInsets.only(top: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                top:
                                    BorderSide(color: Colors.black, width: 1))),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage(
                                        Dummydb.postlist[index]["profileUrl"]),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Dummydb.postlist[index]["name"],
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        Dummydb.postlist[index]["headline"],
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              Dummydb.postlist[index]["description"],
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Container(
                              child: Image(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/27054232/pexels-photo-27054232/free-photo-of-a-road-with-a-sign-that-says-road-to-the-ocean.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load")),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.blue.shade900,
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: Colors.blue,
                                      size: 8,
                                    )),
                                CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.deepOrange.shade900,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 8,
                                    )),
                                CircleAvatar(
                                    radius: 8,
                                    backgroundColor: Colors.green.shade900,
                                    child: Icon(
                                      Icons.handshake,
                                      color: Colors.lightGreen,
                                      size: 8,
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  Dummydb.postinteractionlist[index]["likes"],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Spacer(),
                                Text(
                                  Dummydb.postinteractionlist[index]
                                      ["comments"],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  Dummydb.postinteractionlist[index]["reposts"],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.thumb_up_outlined,
                                      size: 20,
                                    ),
                                    Text(
                                      "Like",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.comment_outlined,
                                      size: 20,
                                    ),
                                    Text(
                                      "comments",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.cached_outlined,
                                      size: 20,
                                    ),
                                    Text(
                                      "Repost",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.send_outlined,
                                      size: 20,
                                    ),
                                    Text(
                                      "Send",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              Dummydb.postlist[index]["tags"],
                              style:
                                  TextStyle(fontSize: 14, color: Colors.blue),
                            ),
                          ],
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
