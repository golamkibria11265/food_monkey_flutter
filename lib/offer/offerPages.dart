import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/boldTextWidget.dart';
import 'package:food_monkey/customWidget/normalTextWidget.dart';
import 'package:food_monkey/customWidget/productWidget.dart';
import 'package:food_monkey/dashboard/items.dart';
import 'package:food_monkey/dashboard/itemsService.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({Key? key}) : super(key: key);
  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 4.46),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 0, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NormalTextWidget("On Going Offers !", 25),
                      InkWell(
                        child: Icon(Icons.shopping_cart, size: 35),
                        onTap: () {
                          //write to get to the cart page
                        },
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: NormalTextWidget("Delivering to", 13),
                    ),
                  ],
                ),
                SizedBox(height: height / 160.5818),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: BoldTextWidget("Current location", 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Icon(Icons.arrow_downward, color: Colors.orange),
                    ),
                  ],
                ),
                SizedBox(height: height / 80.2909),
                Material(
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
                    width: width / 1.1,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: new InputDecoration(
                          icon: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, bottom: 11, top: 15, right: 0),
                            child: new Icon(Icons.search),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 0, bottom: 11, top: 15, right: 15),
                          hintText: "Search Food"),
                      onChanged: (value) {
                        //write to search the food
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: FutureBuilder<List<Items>>(
            future: ReadJsonData(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    Items items = snapshot.data![index];
                    return InkWell(
                      child: ProductWidget(
                          image: items.rootUri,
                          name: items.name,
                          rating: items.rating,
                          type: items.type),
                      onTap: () {
                        print(items
                            .name); //write to get to the details of the product
                      },
                    );
                  },
                );
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
