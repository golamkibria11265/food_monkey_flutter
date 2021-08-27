import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textinputwidget extends StatelessWidget {
  final String text;
  Textinputwidget(this.text,);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Material(
      color: Colors.red,
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        height: height / 14.337,
        width: width / 1.279,
        child: TextField(
          cursorColor: Colors.black,
          decoration: new InputDecoration(
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 15, right: 15),
              hintText: text),
        ),
      ),
    );
  }
}
