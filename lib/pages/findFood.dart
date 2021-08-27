import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/normalTextWidget.dart';
import 'package:food_monkey/customWidget/orangeRepeatGrid.dart';
import 'package:food_monkey/pages/firstDelivery.dart';

class Findfood extends StatefulWidget {
  const Findfood({Key? key}) : super(key: key);

  @override
  _FindfoodState createState() => _FindfoodState();
}

class _FindfoodState extends State<Findfood> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: height / 10.636,
            ),
            Container(
              height: height / 2.894,
              width: width / 1.7454,
              child:
                  Image(image: AssetImage('images/Findfoodyoulovevector.png')),
            ),
            SizedBox(
              height: height / 85.0909,
            ),
            Container(
              height: height / 42.5454,
              width: width / 13.0909,
              child: Image(image: AssetImage('images/Sliderindicators1.png')),
            ),
            SizedBox(
              height: height / 14.1818,
            ),
            NormalTextWidget('Find Food You Love', 25),
            SizedBox(
              height: height / 28.3636,
            ),
            NormalTextWidget('Discover the best foods from over 1,000', 15),
            SizedBox(
              height: height / 170.1818,
            ),
            NormalTextWidget(
                'restaurants and fast delivery to your doorstep', 15),
            SizedBox(
              height: height / 12.1558,
            ),
            GestureDetector(
              child: OrangeRepeatGrid('Next'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstDelivery()));
              },
            )
          ],
        ),
      ),
    );
  }
}
