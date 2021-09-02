import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalWiteTextWidget extends StatelessWidget {
  final String text;
  final double font;

  NormalWiteTextWidget(this.text, this.font);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Cabin',
          fontSize: font,
          color: Colors.white,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
