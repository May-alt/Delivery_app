class PastaModels {
  final String? titre;
  final String? image;
  final dynamic? prix;
  final String tCuisant;
  final String time;
  List<String> Ingredients = [];

  PastaModels({
    required this.image,
    required this.titre,
    required this.prix,
    required this.tCuisant,
    required this.time,
    required this.Ingredients,
  });
}


List<PastaModels> pastas = [

  PastaModels(
      image: "assets/pasta_img/penne.jpg",
      titre: "pates-penne",
      prix: "45",
      tCuisant: "25 minutes",
      time: "30 minutes ",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3.sauce",
      "4.pepperoni",
    ],
  ),
  PastaModels(
    image: "assets/pasta_img/pates.jpg",
    titre: "pates-fettuccine-bolognaise",
    prix: "57",
    tCuisant: "25 minutes",
    time: "30 minutes ",
    Ingredients: [
      "1. pates",
      "2. Toamte",
      "3.bolognaise",
      "4.pepperoni",
      "5.Fromage",
    ],
  ),
  PastaModels(
    image: "assets/pasta_img/pates-it.jpg",
    titre: "pates-italiennes",
    prix: "42",
    tCuisant: "25 minutes",
    time: "30 minutes ",
    Ingredients: [
      "1. pates",
      "2. Toamte",
      "3.cheese",


    ],
  ),

];



