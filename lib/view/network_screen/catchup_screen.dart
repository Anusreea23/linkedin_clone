import 'package:flutter/material.dart';
import 'package:linkedin_clone/dummydb.dart';
import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';

class CatchupScreen extends StatelessWidget {
  const CatchupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e6df),
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => Expanded(
          child: Container(
            height: 60,
            color: index == 0 ? Colors.blue.shade100 : Colors.white60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(Dummydb.catchupdata[index]["profileurl"]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Dummydb.catchupdata[index]["name"],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        Dummydb.catchupdata[index]["message"],
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        Dummydb.catchupdata[index]["date"],
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Dummydb.catchupdata[index]["count"] == "0"
                          ? SizedBox()
                          : CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.blue.shade900,
                              child: Text(
                                Dummydb.catchupdata[index]["count"],
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 1,
        ),
        itemCount: Dummydb.catchupdata.length,
      ),
      
    );
  }
}
