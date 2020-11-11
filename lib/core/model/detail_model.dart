// To parse this JSON data, do
//
//     final hyDetailModel = hyDetailModelFromJson(jsonString);

import 'dart:convert';

HYDetailModel hyDetailModelFromJson(String str) =>
    HYDetailModel.fromJson(json.decode(str));

String hyDetailModelToJson(HYDetailModel data) => json.encode(data.toJson());

class HYDetailModel {
  HYDetailModel({
    this.meal,
  });

  List<Meal> meal;

  factory HYDetailModel.fromJson(Map<String, dynamic> json) => HYDetailModel(
        meal: List<Meal>.from(json["meal"].map((x) => Meal.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meal": List<dynamic>.from(meal.map((x) => x.toJson())),
      };
}

class Meal {
  Meal({
    this.id,
    this.categories,
    this.title,
    this.affordability,
    this.complexity,
    this.imageUrl,
    this.duration,
    this.ingredients,
    this.steps,
    this.isGlutenFree,
    this.isVegan,
    this.isVegetarian,
    this.isLactoseFree,
  });

  String id;
  List<String> categories;
  String title;
  int affordability;
  int complexity;
  String imageUrl;
  int duration;
  List<String> ingredients;
  List<String> steps;
  bool isGlutenFree;
  bool isVegan;
  bool isVegetarian;
  bool isLactoseFree;

  factory Meal.fromJson(Map<String, dynamic> json) => Meal(
        id: json["id"],
        categories: List<String>.from(json["categories"].map((x) => x)),
        title: json["title"],
        affordability: json["affordability"],
        complexity: json["complexity"],
        imageUrl: json["imageUrl"],
        duration: json["duration"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        steps: List<String>.from(json["steps"].map((x) => x)),
        isGlutenFree: json["isGlutenFree"],
        isVegan: json["isVegan"],
        isVegetarian: json["isVegetarian"],
        isLactoseFree: json["isLactoseFree"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "categories": List<dynamic>.from(categories.map((x) => x)),
        "title": title,
        "affordability": affordability,
        "complexity": complexity,
        "imageUrl": imageUrl,
        "duration": duration,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "steps": List<dynamic>.from(steps.map((x) => x)),
        "isGlutenFree": isGlutenFree,
        "isVegan": isVegan,
        "isVegetarian": isVegetarian,
        "isLactoseFree": isLactoseFree,
      };
}
