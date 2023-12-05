import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../model/meal_planner/recommendation_model.dart';
import '../../pages/meal_planner/detail_page.dart';

class RecommendationMealPlanner extends StatefulWidget {
  const RecommendationMealPlanner({super.key});

  @override
  State<RecommendationMealPlanner> createState() => _RecommendationMealPlannerState();
}

class _RecommendationMealPlannerState extends State<RecommendationMealPlanner> {

  List<RecommendationPlannerModel> categories = [];

  _getCategories() {
    categories = RecommendationPlannerModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const Text("Recommendation \nFor Diet", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),

          const SizedBox(height: 10),

          SizedBox(
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => DetailPage(
                          name: categories[index].name,
                          url: categories[index].url,
                          boxColors: categories[index].boxColors,
                        ),
                      ),
                    );
                  },

                  child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        color: categories[index].boxColors.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SvgPicture.asset(categories[index].url),

                          const SizedBox(height: 10),

                          Text(categories[index].name, style: const TextStyle(fontWeight: FontWeight.bold)),

                          Text(categories[index].desc, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12))

                        ],
                      )
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
