import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/boldTextWidget.dart';
import 'package:food_monkey/pages/cakeItems.dart';

class MenuWidget1 extends StatelessWidget {
  final String Image;
  final String text;

  MenuWidget1({required this.Image, required this.text});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 9.2288,
      width: width / 1.1793,
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            top: -height / 47.2299,
            left: width / 19.6363,
            right: width / 39.2727,
            height: height / 6.4232,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/rectangular.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: height / 160.5818,
            left: -width / 65.4545,
            right: width / 1.5104,
            height: height / 10.0363,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(Image),
                ),
              ),
            ),
          ),
          Center(child: BoldTextWidget(text, 25)),
          Positioned(
            top: height / 160.5818,
            left: width / 1.5104,
            right: -width / 39.2727,
            height: height / 10.0363,
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/roundArrow.png'),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CakeItems()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
