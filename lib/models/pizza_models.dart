class PizzaModels {
  final String? titre;
  final String? image;
  final dynamic? prix;
  final String tCuisant;
  final String time;
  List<String> Ingredients = [];

  PizzaModels({
    required this.image,
    required this.titre,
    required this.prix,
    required this.tCuisant,
    required this.time,
    required this.Ingredients,
  });
}

List<PizzaModels> pizza = [
  PizzaModels(
    image: "assets/pizza_img/pepperoni-_pz.jpg",
    titre: "sliced pepperoni is a popular pizza",
    prix: "15.48",
    time: "20",
    tCuisant: "10-25",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3.sauce",
      "4.pepperoni",

    ],
  ),
  PizzaModels(
    image: "assets/pizza_img/pepperoni-_pz.jpg",
    titre: "sliced pepperoni is a popular pizza",
    prix: "15.48",
    time: "20",
    tCuisant: "10-25",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3.sauce",
      "4.pepperoni",

    ],
  ),
  PizzaModels(
    image: "assets/pizza_img/pizz_margarita.jpg",
    titre: "Pizza with cheese and tomato",
    prix: "15.48",
    time: "20 minutes",
    tCuisant: "10-25 minutes",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3. sauce",
      "4. cheese",

    ],
  ),


];
