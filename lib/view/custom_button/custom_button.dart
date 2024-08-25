import 'package:flutter/material.dart';

Widget columnsinglebutton({
  required String name,
  required String iconimage,
  required Color colors,
}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
    child: Column(
      children: [
        Container(
          width: 20,
          height: 20,
          child: Image.asset(
            iconimage,
            color: colors,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xff666666),
          ),
        )
      ],
    ),
  );
}
