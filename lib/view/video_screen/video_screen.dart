import 'package:flutter/material.dart';
import 'package:linkedin_clone/dummydb.dart';
import 'package:linkedin_clone/view/main_page/main_page.dart';

void main() {
  runApp(VideoScreen());
}

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PageView.builder(
              itemCount: Dummydb.videoscreen.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Image(
                        image: NetworkImage(
                            Dummydb.videoscreen[index]["imageurl"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 10,
                      child: Column(
                        children: [
                          Icon(Icons.thumb_up, color: Colors.white),
                          Text(Dummydb.videoscreen[index]["likes"],
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 20),
                          Icon(Icons.comment, color: Colors.white),
                          Text(Dummydb.videoscreen[index]["comments"],
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 20),
                          Icon(Icons.share, color: Colors.white),
                          Text(Dummydb.videoscreen[index]["shares"],
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 25,
                          ),
                          Icon(Icons.volume_down_rounded,
                              size: 35, color: Colors.white),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      right: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                Dummydb.videoscreen[index]["profileurl"]),
                            radius: 20,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      Dummydb.videoscreen[index]["name"],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '• 3rd+',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.transparent,
                                          side: BorderSide(
                                              color: Colors.white, width: 1)),
                                      onPressed: () {},
                                      child: Text(
                                        "follow",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  Dummydb.videoscreen[index]["profile"],
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  Dummydb.videoscreen[index]["description"],
                                  style: TextStyle(color: Colors.white),
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ));
  }
}
