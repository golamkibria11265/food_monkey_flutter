import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/boldWTextWidget.dart';
import 'package:food_monkey/customWidget/normalWTextWidget.dart';

class ProductWidget2 extends StatelessWidget {
  final String image;
  final String name;
  final String rating;
  final String type;

  ProductWidget2(
      {required this.image,
      required this.name,
      required this.rating,
      required this.type});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: height / 3.1486,
      width: width,
      child: Column(
        children: [
          Container(
            height: height / 3.2254,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height / 4.7,
                  child: Container(
                    height: height / 11.4701,
                    width: width,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: BoldWiteTextWidget(name, 17),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.orange[900],
                                    size: 30.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                                child: NormalWiteTextWidget(rating + ":", 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                child: NormalWiteTextWidget(type, 15),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
