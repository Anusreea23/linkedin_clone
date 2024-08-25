import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin_clone/view/profile_sidebar/profile_sidebar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          height: 50,
          padding: EdgeInsets.only(top: 5, right: 15, left: 15),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/pexels-olly-3779760.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                    height: 40,
                    width: 145,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xffeef3f7)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "search",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff666666),
                          )),
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.add,
                color: Color(0xff666666),
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.solidCommentDots,
                color: Color(0xff666666),
              )
            ],
          )),
    );
  }
}
