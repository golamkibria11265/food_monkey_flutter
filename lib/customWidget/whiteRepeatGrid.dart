import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget WhiteRepeatGrid(
  double height,
  double width,
  String text,
) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.orange,
        ),
        borderRadius: BorderRadius.all(Radius.circular(30))),
    height: height / 14.337,
    width: width / 1.279,
    child: Center(
        child: Text(
      '$text',
      style: TextStyle(
        fontFamily: 'Cabin',
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.normal,
        decoration: TextDecoration.none,
      ),
    )),
  );
}
