class NutritionModel {
  String url;
  String desc;
  String? qnty; // Tornando qnty opcional

  NutritionModel({required this.url, required this.desc, this.qnty});

  static List<NutritionModel> getNutritionItems() {
    List<NutritionModel> items = [];

    items.add(
      NutritionModel(url: "assets/images/meal_planning/detail/Calories-Icon.svg", desc: "180kCal"),
    );

    items.add(
      NutritionModel(url: "assets/images/meal_planning/detail/Fat-Icon.svg", desc: "30g fats"),
    );

    items.add(
      NutritionModel(url: "assets/images/meal_planning/detail/Proteins-Icon.svg", desc: "20g Proteins"),
    );

    items.add(
      NutritionModel(url: "assets/images/meal_planning/detail/Carbo-Icon.svg", desc: "20g Carbo"),
    );

    return items;
  }
}

class IngredientsModel extends NutritionModel {
  IngredientsModel({
    required String url,
    required String desc,
    required String qnty,
  }) : super(url: url, desc: desc, qnty: qnty);

  static List<IngredientsModel> getIngredientsItems() {
    List<IngredientsModel> items = [];

    items.add(
      IngredientsModel(
        url: "assets/images/meal_planning/detail/Flour-Icon.svg",
        desc: "Wheat Flour",
        qnty: "100gr",
      ),
    );

    items.add(
      IngredientsModel(
        url: "assets/images/meal_planning/detail/Sugar-Icon.svg",
        desc: "Sugar",
        qnty: "3 tbsp",
      ),
    );

    items.add(
      IngredientsModel(
        url: "assets/images/meal_planning/detail/Group.svg",
        desc: "Baking Soda",
        qnty: "2 tbsp",
      ),
    );

    items.add(
      IngredientsModel(
        url: "assets/images/meal_planning/detail/Eggs-Icon.svg",
        desc: "Eggs",
        qnty: "2 items",
      ),
    );

    return items;
  }
}
