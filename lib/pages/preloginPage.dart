import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/orangeRepeatGrid.dart';
import 'package:food_monkey/customWidget/whiteRepeatGrid.dart';
import 'package:food_monkey/pages/logInPage.dart';
import 'package:food_monkey/pages/signUpPage.dart';

class Preloginpage extends StatefulWidget {
  const Preloginpage({Key? key}) : super(key: key);
  @override
  _PreloginpageState createState() => _PreloginpageState();
}

class _PreloginpageState extends State<Preloginpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            top: -height / 80.29,
            left: -width / 11.20,
            right: -width / 11.20,
            height: height / 1.6058,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/Orangeshape.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.44,
            left: width / 3,
            right: width / 3,
            height: height / 6,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/Monkeyface.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: height * .6,
            left: width / 4,
            right: width / 9,
            height: height / 9,
            child: Row(
              children: [
                Text(
                  "Meal",
                  style: TextStyle(
                    fontFamily: 'Cabin',
                    fontSize: 34,
                    color: Colors.orange[900],
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                Text(
                  "Monkey",
                  style: TextStyle(
                    fontFamily: 'Cabin',
                    fontSize: 34,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: height/1.5757,
            left: width / 2.7,
            right: width / 15,
            height: height / 9,
            child: Row(
              children: [
                Text(
                  "FOOD DELIVERY",
                  style: TextStyle(
                    fontFamily: 'Cabin',
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height/1.270,
            left: width/9.350,
            right: width/9.350,
            height: height/15.19,
            child: GestureDetector(
              child: OrangeRepeatGrid("Log In"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
              },
            ),
          ),
          Positioned(
            top: height/1.1421,
            left: width/9.350,
            right: width/9.350,
            height:height/15.19,
            child: GestureDetector(
              child: WhiteRepeatGrid(
                height,
                width,
                'Create an Account',
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
