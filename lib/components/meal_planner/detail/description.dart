import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../model/meal_planner/detail/description_model.dart';

class DescriptionDetail extends StatefulWidget {
  const DescriptionDetail({super.key});

  @override
  State<DescriptionDetail> createState() => _DescriptionState();
}

class _DescriptionState extends State<DescriptionDetail> {

  List<NutritionModel> nutritionItems = [];
  List<NutritionModel> ingredientsItems = [];

  _getItems() {
    nutritionItems = NutritionModel.getNutritionItems();
    ingredientsItems = IngredientsModel.getIngredientsItems();
  }

  @override
  Widget build(BuildContext context) {
    _getItems();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const Text("Nutrition", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

        const SizedBox(height: 10),

        SizedBox(
          height: 50,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: nutritionItems.length,
              itemBuilder: (context, index) {
                
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                  ),

                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(nutritionItems[index].url),
                        const SizedBox(width: 10),
                        Text(nutritionItems[index].desc)
                      ],
                    ),
                  ),
                );
             }
          ),
        ),

        const SizedBox(height: 30),

        const Text("Descriptions", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),

        const SizedBox(height: 20),
        
        const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. ",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12)),

        const SizedBox(height: 30),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Ingredients That You\nWill Need", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Text("${ingredientsItems.length} items"),
          ],
        ),

        const SizedBox(height: 20),

        SizedBox(
          height: 200,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              itemCount: nutritionItems.length,
              itemBuilder: (context, index) {

                return Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(ingredientsItems[index].url),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(ingredientsItems[index].desc, style: const TextStyle(fontWeight: FontWeight.w500)),
                        //usando ?? por conta da logica na model
                        Text(ingredientsItems[index].qnty ?? "N/A", style: const TextStyle(fontSize: 12))
                      ],
                    ),


                  ],
                );
              }
          ),
        ),


      ],
    );
        
  }
}
