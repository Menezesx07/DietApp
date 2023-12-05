import 'package:diet_app/components/meal_planner/category_menu.dart';
import 'package:diet_app/components/meal_planner/recommendation_diet.dart';
import 'package:diet_app/components/meal_planner/search_bar.dart';
import 'package:flutter/material.dart';
import '../../components/meal_planner/app_bar.dart';
import '../../components/meal_planner/popular.dart';

class BreakfastPage extends StatelessWidget {
  const BreakfastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarMealPlanner()),

      body: SingleChildScrollView(
        child: Column(
          children: [

            SearchBarMealPlanner(),

            CategoryMenuMealPlanner(),

            RecommendationMealPlanner(),

            PopularMealPlanner()
          ],
        ),
      )

    );
  }
}
