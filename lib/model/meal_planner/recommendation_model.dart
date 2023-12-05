import 'package:flutter/material.dart';

class RecommendationPlannerModel {

  String name;
  String desc;
  String url;
  Color boxColors;

  RecommendationPlannerModel({required this.name, required this.desc,required this.url, required this.boxColors});

  //static para que a lista seja acessada sem criar um parametro
  static List<RecommendationPlannerModel> getCategories() {
    List<RecommendationPlannerModel> categories = [];

    categories.add(
        RecommendationPlannerModel(
            name: "Honey Pancake", desc: "Easy | 30mins | 180kCal",
            url: "assets/images/meal_planning/recommendation/honeypanck.svg", boxColors: const Color(0xff92A3FD))
    );

    categories.add(
        RecommendationPlannerModel(
            name: "Canai Breach", desc: "Easy | 20mins | 180kCal",
            url: "assets/images/meal_planning/recommendation/canai.svg", boxColors: const Color(0xffC58BF2))
    );

    categories.add(
        RecommendationPlannerModel(name: "BlueBerry Pancake", desc: "Medium | 30mins | 480kCal",
            url: "assets/images/meal_planning/recommendation/blueberry.svg", boxColors: const Color(0xff92A3FD))
    );


    return categories;
  }

}