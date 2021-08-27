// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) =>
    List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
  Items({
    required this.name,
    required this.rootUri,
    required this.rating,
    required this.type,
  });

  String name;
  String rootUri;
  String rating;
  String type;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        name: json["name"],
        rootUri: json["rootUri"],
        rating: json["rating"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "rootUri": rootUri,
        "rating": rating,
        "type": type,
      };
}
