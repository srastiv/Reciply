class FoodType {
  String foodType;
  bool isSelected = false;
  FoodType({required this.foodType, required this.isSelected});
}

List<FoodType> foodType = [
  FoodType(foodType: "Breakfast", isSelected: false),
  FoodType(foodType: "Lunch", isSelected: false),
  FoodType(foodType: "Snacks", isSelected: false),
  FoodType(foodType: "Dinner", isSelected: false),
];
