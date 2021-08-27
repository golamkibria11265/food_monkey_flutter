import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart' as rootBundle;
import 'package:food_monkey/dashboard/items.dart';

Future<List<Items>> ReadJsonData(BuildContext context) async {
  // var jsondata = await rootBundle.rootBundle.loadString("assets/items.json");
  var jsondata =
      await DefaultAssetBundle.of(context).loadString("assets/items.json");
  var itemData = itemsFromJson(jsondata);
  return itemData;
}
