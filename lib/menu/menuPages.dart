import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/menuWidgets1.dart';
import 'package:food_monkey/customWidget/menuWidgets2.dart';
import 'package:food_monkey/customWidget/menuWidgets3.dart';
import 'package:food_monkey/customWidget/menuWidgets4.dart';
import 'package:food_monkey/customWidget/normalTextWidget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 11.4),
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalTextWidget("Menu !", 25),
                      InkWell(
                        child: Icon(Icons.shopping_cart, size: 35),
                        onTap: () {},
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          // child: MenuWidget1(Image: "images/burger.png", text: "Burger"),
          child: Stack(
            children: [
              Positioned(
                top: height / 53.5272,
                left: 0,
                right: width / 1.5279,
                height: height / 1.4337,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/Sidebarorange.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height / 16.0581,
                left: width / 19.6363,
                right: width / 19.6363,
                height: height / 9.2288,
                child: Container(
                    child:
                        MenuWidget1(Image: "images/cofi.png", text: "Coffee")),
              ),
              Positioned(
                top: height / 4.4606,
                left: width / 19.6363,
                right: width / 19.6363,
                height: height / 9.2288,
                child: Container(
                    child: MenuWidget2(
                        Image: "images/burger.png", text: "Burger")),
              ),
              Positioned(
                top: height / 2.5090,
                left: width / 19.6363,
                right: width / 19.6363,
                height: height / 9.2288,
                child: Container(
                    child: MenuWidget3(
                        Image: "images/roundIconFood.png", text: "Food")),
              ),
              Positioned(
                top: height / 1.7842,
                left: width / 19.6363,
                right: width / 19.6363,
                height: height / 9.2288,
                child: Container(
                    child: MenuWidget4(
                        Image: "images/icecream.png", text: "Ice Cream")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
