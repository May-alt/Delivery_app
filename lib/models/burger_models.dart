import 'package:flutter/material.dart';

class BurderModels{
  final String? titre;
  final String? image;
  final dynamic? prix;
  final String tCuisant;
  final String time;
  List<String> Ingredients = [];


  BurderModels({
    required this.prix,
    required this.titre,
    required this.time,
    required this.tCuisant,
    required this.image,
    required this.Ingredients,
});
}


List<BurderModels> burgers = [
  BurderModels(
      prix: "23",
      titre: "Beef Burgeur",
      time: "30 mintes",
      tCuisant: "25 mintes",
      image: "assets/burg/brg3.jpg",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3.sauce",
      "4.pepperoni",
    ],
     ),
  BurderModels(
      prix: "26",
      titre: "Beef Burgeur",
      time: "30 mintes",
      tCuisant: "25 mintes",
      image: "assets/burg/det.png",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3.sauce",
      "4.pepperoni",
    ],
     ),
  BurderModels(
      prix: "50",
      titre: "Beef Burgeur",
      time: "30 mintes",
      tCuisant: "25 mintes",
      image: "assets/burg/brg3.jpg",
    Ingredients: [
      "1. Onion",
      "2. Toamte",
      "3.sauce",
      "4.pepperoni",
    ],
     ),

];