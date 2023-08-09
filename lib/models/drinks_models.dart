import 'package:flutter/material.dart';


class DrinksModels {

  final String? titre;
  final String? imagUrl;
  final String? prix;

  DrinksModels({
    required this.prix,
    required this.titre,
    required this.imagUrl
});

}


List<DrinksModels>  Drink =[
  DrinksModels(prix: "20", titre: "coca-cola", imagUrl: "assets/drink/coca-cola.jpg"),
  DrinksModels(prix: "22", titre: "Tropicana Orange Sans Pulpe", imagUrl: "assets/drink/tropicana.jpg"),
  DrinksModels(prix: "18", titre: "Tropicana Orange", imagUrl: "assets/drink/original.jpg"),
  DrinksModels(prix: "20", titre: "bouteille-d-eau-cristalline", imagUrl: "assets/drink/eau.jpg"),
];