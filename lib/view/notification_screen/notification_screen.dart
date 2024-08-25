import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/dummydb.dart';
import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: ListView.separated(
          itemBuilder: (context, index) => Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  Dummydb.notificationlist[index]["profileurl"],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Dummydb.notificationlist[index]["descriptions"],
                        style: TextStyle(
                            color: Colors.black,
                            overflow: TextOverflow.fade,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                      Text(
                        Dummydb.notificationlist[index]["data"],
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.more_vert_outlined)
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 20,
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}
