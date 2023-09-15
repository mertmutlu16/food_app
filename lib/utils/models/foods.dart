// To parse this JSON data, do
//
//     final foods = foodsFromJson(jsonString);


import 'dart:convert';

List<Foods> foodsFromJson(String str) => List<Foods>.from(json.decode(str).map((x) => Foods.fromJson(x)));

String foodsToJson(List<Foods> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Foods {
    int id;
    String foodName;
    double price;
    double rating;
    String description;
    String ingredients;
    int cookTime;
    int servingTime;

    Foods({
        required this.id,
        required this.foodName,
        required this.price,
        required this.rating,
        required this.description,
        required this.ingredients,
        required this.cookTime,
        required this.servingTime,
    });

    factory Foods.fromJson(Map<String, dynamic> json) => Foods(
        id: json["id"],
        foodName: json["foodName"],
        price: json["price"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        description: json["description"],
        ingredients: json["ingredients"],
        cookTime: json["cookTime"],
        servingTime: json["servingTime"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "foodName": foodName,
        "price": price,
        "rating": rating,
        "description": description,
        "ingredients": ingredients,
        "cookTime": cookTime,
        "servingTime": servingTime,
    };
}
