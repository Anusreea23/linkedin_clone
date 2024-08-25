import 'package:flutter/material.dart';
import 'package:linkedin_clone/dummydb.dart';

import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';
import 'package:linkedin_clone/view/custom_tabbar/custom_tabbar.dart';
import 'package:linkedin_clone/view/network_screen/catchup_screen.dart';

class NetworkScreen extends StatefulWidget {
  const NetworkScreen({
    super.key,
  });

  @override
  State<NetworkScreen> createState() => _NetworkScreenState();
}

class _NetworkScreenState extends State<NetworkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Color(0xffe8e6df),
          appBar: AppBar(
            title: CustomAppbar(),
            bottom: TabBar(
                dividerHeight: 0,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.green.shade900,
                indicatorWeight: 3,
                labelColor: Colors.green.shade900,
                unselectedLabelColor: Colors.grey.shade600,
                tabs: [
                  Tab(
                    text: "Grow",
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CatchupScreen()));
                    },
                    child: Tab(
                      text: "Catch up",
                    ),
                  ),
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
              itemCount: 6,
              itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16),
                          // image: DecorationImage(
                          //     fit: BoxFit.cover,
                          //     image: NetworkImage(
                          //         "https://images.pexels.com/photos/1260727/pexels-photo-1260727.jpeg?auto=compress&cs=tinysrgb&w=600")),
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10)),
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  Dummydb.postlist2[index]["profileUrl"]),
                              radius: 40,
                            ),
                            Text(
                              Dummydb.postlist2[index]["name"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                textAlign: TextAlign.center,
                                Dummydb.postlist2[index]["headline"],
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              Dummydb.postlist2[index]["company"],
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 10),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    side: BorderSide(
                                        color: Colors.blue.shade800, width: 1)),
                                onPressed: () {},
                                child: Text(
                                  "connect",
                                  style: TextStyle(
                                      color: Colors.blue.shade800,
                                      fontStyle: FontStyle.italic),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          )

          // body: Column(
          //   children: [
          //     Padding(
          //       padding: EdgeInsets.all(8.0),
          //       child: Text("people you may know based on your recent activity",
          //           style:
          //               TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
          //     ),

          ),
    );
  }
}
