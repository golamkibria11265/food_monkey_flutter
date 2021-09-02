import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_monkey/customWidget/productWidget2.dart';
import 'package:food_monkey/dashboard/items.dart';
import 'package:food_monkey/dashboard/itemsService.dart';

class CakeItems extends StatefulWidget {
  const CakeItems({Key? key}) : super(key: key);
  @override
  _CakeItemsState createState() => _CakeItemsState();
}

class _CakeItemsState extends State<CakeItems> {
  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [],
          backgroundColor: Colors.orange[900],
        ),
        body: SafeArea(
          child: FutureBuilder<List<Items>>(
            future: ReadJsonData(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: (snapshot.data!.length),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    Items items = snapshot.data![index];
                    return InkWell(
                      child: ProductWidget2(
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
