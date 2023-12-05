import 'package:flutter/material.dart';

class CategoryMealPlannerModel {

  String name;
  String url;
  Color boxColors;

  CategoryMealPlannerModel({required this.name, required this.url, required this.boxColors});

  //static para que a lista seja acessada sem criar um parametro
  static List<CategoryMealPlannerModel> getCategories() {
    List<CategoryMealPlannerModel> categories = [];
    
    categories.add(
        CategoryMealPlannerModel(name: "Salad", url: "assets/images/meal_planning/category/salad.svg", boxColors: const Color(0xff92A3FD))
    );

    categories.add(
        CategoryMealPlannerModel(name: "Cake", url: "assets/images/meal_planning/category/cake.svg", boxColors: const Color(0xffC58BF2))
    );

    categories.add(
        CategoryMealPlannerModel(name: "Pie", url: "assets/images/meal_planning/category/pie.svg", boxColors: const Color(0xff92A3FD))
    );

    categories.add(
        CategoryMealPlannerModel(name: "Smooothies", url: "assets/images/meal_planning/category/smoothies.svg", boxColors: const Color(0xffC58BF2))
    );
    
    return categories;
  }

}