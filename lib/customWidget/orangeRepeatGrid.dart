import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrangeRepeatGrid extends StatelessWidget {
  final String text;

  OrangeRepeatGrid(this.text);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.orange[900],
          border: Border.all(
            color: Colors.orange,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      height: height / 14.337,
      width: width / 1.279,
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Cabin',
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
        ),
      )),
    );
  }
}
