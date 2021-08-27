import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/boldTextWidget.dart';
import 'package:food_monkey/customWidget/normalTextWidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalTextWidget("Good Morning !", 25),
                      InkWell(
                        child: Icon(Icons.shopping_cart, size: 35),
                        onTap: () {
                          //write to go to cart page
                        },
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: NormalTextWidget("Delivering to", 13),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: BoldTextWidget("Current location", 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Icon(Icons.arrow_downward, color: Colors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
