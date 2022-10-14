class Recipes {
  String recipeName;
  String imagePath;
  String recipeAuthor;
  Recipes({
    required this.recipeName,
    required this.imagePath,
    required this.recipeAuthor,
  });
}

List<Recipes> recipes = [
  Recipes(
      recipeName: "Egg & Avocado",
      imagePath: "assets/f5.png",
      recipeAuthor: "Daniel"),
  Recipes(
      recipeName: "Bowl of Rice",
      imagePath: "assets/f2.png",
      recipeAuthor: "Rosaline"),
  Recipes(
      recipeName: "Chicken Soup",
      imagePath: "assets/f3.png",
      recipeAuthor: "Margarett"),
  Recipes(recipeName: "Salad", imagePath: "assets/f3.png", recipeAuthor: "Raj"),
  Recipes(recipeName: "Dal", imagePath: "assets/f5.png", recipeAuthor: "Sher"),
  Recipes(
      recipeName: "Fruits", imagePath: "assets/f1.png", recipeAuthor: "Rani"),
  Recipes(
      recipeName: "Veggies", imagePath: "assets/f2.png", recipeAuthor: "Mina"),
  Recipes(
      recipeName: "Oily Food",
      imagePath: "assets/f3.png",
      recipeAuthor: "Raju"),
];
