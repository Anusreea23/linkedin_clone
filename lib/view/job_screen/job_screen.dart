import 'package:flutter/material.dart';
import 'package:linkedin_clone/dummydb.dart';
import 'package:linkedin_clone/view/custom_appbar/custom_appbar.dart';

class JobScreen extends StatefulWidget {
  const JobScreen({super.key});

  @override
  State<JobScreen> createState() => _JobScreenState();
}

class _JobScreenState extends State<JobScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e6df),
      appBar: AppBar(
        title: CustomAppbar(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Top job picks for you",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        width: 35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  Dummydb.jobdata[index]["jobname"],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                TextButton(
                                    onPressed: () {}, child: Icon(Icons.close)),
                              ],
                            ),
                            Text(
                              Dummydb.jobdata[index]["company"],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                            SizedBox(height: 5),
                            Text(
                              Dummydb.jobdata[index]["location"],
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 13),
                            ),
                            Text(
                              'Actively recruiting',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 13),
                            ),
                            Text(
                              'promoted',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 13),
                            ),
                            Divider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "show all",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                            size: 18,
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore with job collections",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 35,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    Dummydb.jobdata[index]["jobname"],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  TextButton(
                                      onPressed: () {},
                                      child: Icon(Icons.close)),
                                ],
                              ),
                              Text(
                                Dummydb.jobdata[index]["company"],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              SizedBox(height: 5),
                              Text(
                                Dummydb.jobdata[index]["location"],
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 13),
                              ),
                              Text(
                                'Actively recruiting',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 13),
                              ),
                              Text(
                                'promoted',
                                style: TextStyle(
                                    color: Colors.grey.shade700, fontSize: 13),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "show all",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                              size: 18,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
