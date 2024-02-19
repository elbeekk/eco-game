import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:flutter/material.dart';

class LocalData {
  LocalData._();

  static List<BuildingModel> shopItems = [
    BuildingModel(
        name: "House",
        image: "assets/images/game_assets/village/images/HOUSE 1 - DAY.png",
        energy: -7,
        people: 3,
        duration: 10,
        price: 2000,
    ),
    BuildingModel(
        name: "Solar Panel",
        image: "assets/images/game_assets/village/images/solarPanel.png",
        energy: 15,
        people: 0,
        duration: 3,
        price: 6000,
    ),
    BuildingModel(
        name: "Church",
        image: "assets/images/game_assets/village/images/CHURCH - DAY.png",
        energy: -15,
        people: 3,
        duration: 15,
        price: 7000,
    ),
    BuildingModel(
        name: "Bigger House",
        image: "assets/images/game_assets/village/images/HOUSE 2 - DAY.png",
        energy: -10,
        people: 6,
        duration: 13,
        price: 7000,
    ),
    BuildingModel(
        name: "Apartment",
        image: "assets/images/game_assets/village/images/building-red-01.png",
        energy: -40,
        people: 20,
        duration: 20,
        price: 7000,
    ),
  ];
}
