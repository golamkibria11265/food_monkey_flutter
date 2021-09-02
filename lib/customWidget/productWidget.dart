import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/boldTextWidget.dart';
import 'package:food_monkey/customWidget/normalTextWidget.dart';

class ProductWidget extends StatelessWidget {
  final String image;
  final String name;
  final String rating;
  final String type;

  ProductWidget(
      {required this.image,
      required this.name,
      required this.rating,
      required this.type});

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: 255,
      width: width,
      child: Column(
        children: [
          Container(
            height: 193,
            width: width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(image), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: BoldTextWidget(name, 17),
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
                    child: NormalTextWidget(rating + ":", 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                    child: NormalTextWidget(type, 15),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
