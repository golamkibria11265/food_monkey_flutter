import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoldWiteTextWidget extends StatelessWidget {
  final String text;
  final double font;

  BoldWiteTextWidget(this.text, this.font);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Cabin',
          fontSize: font,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
