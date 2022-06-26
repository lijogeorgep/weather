import 'package:flutter/material.dart';
import 'package:weather_app/Constants/palette.dart';

Widget smallContainer(context, {name, data}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.2,
    height: MediaQuery.of(context).size.height * 0.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Palette.lightBlue,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          name,
          style: TextStyle(color: Palette.white),
          textAlign: TextAlign.center,
        ),
        Text(
          data.toString(),
          style: TextStyle(color: Palette.white),
        ),
      ],
    ),
  );
}
