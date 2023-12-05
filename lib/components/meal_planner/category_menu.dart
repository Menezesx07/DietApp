import 'package:diet_app/model/meal_planner/category_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryMenuMealPlanner extends StatefulWidget {
  const CategoryMenuMealPlanner({super.key});

  @override
  State<CategoryMenuMealPlanner> createState() => _CategoryMenuMealPlannerState();
}

class _CategoryMenuMealPlannerState extends State<CategoryMenuMealPlanner> {

  List<CategoryMealPlannerModel> categories = [];

  _getCategories() {
      categories = CategoryMealPlannerModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          const SizedBox(height: 10),

          const Text("Category", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),

          const SizedBox(height: 10),

          SizedBox(
            height: 120,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 25),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: categories[index].boxColors.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset(categories[index].url),
                        ),

                        const SizedBox(height: 10),

                        Text(categories[index].name, style: const TextStyle(fontWeight: FontWeight.bold)),

                      ],
                    )
                  );
                },
            ),
          )
        ],
      ),
    );
  }
}
