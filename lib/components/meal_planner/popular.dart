// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../model/meal_planner/recommendation_model.dart';
import '../../pages/meal_planner/detail_page.dart';

class PopularMealPlanner extends StatefulWidget {
  const PopularMealPlanner({super.key});

  @override
  State<PopularMealPlanner> createState() => _PopularMealPlannerState();
}

class _PopularMealPlannerState extends State<PopularMealPlanner> {
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

          const Text("Popular", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),

          const SizedBox(height: 20),

          SizedBox(
            height: 200,
            child: ListView.separated(
              reverse: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) {

                return ListTile(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                    side: const BorderSide(color: Colors.grey, width: 1),
                  ),

                  tileColor: categories[index].boxColors,

                  leading: SvgPicture.asset(categories[index].url, width: 50),

                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(categories[index].name, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                      Text(categories[index].desc, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.white))
                    ],
                  ),

                  trailing: GestureDetector(
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
                      child: SvgPicture.asset("assets/icons/ArrowRightCircle.svg",color: Colors.white)),
                );

              },
            ),
          )
        ],
      ),
    );
  }
}
