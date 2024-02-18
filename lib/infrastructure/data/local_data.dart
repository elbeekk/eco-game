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
        price: 2000,
        duration: 10),
    BuildingModel(
        name: "Solar Panel",
        image: "assets/images/game_assets/village/images/solarPanel.png",
        energy: 15,
        people: 0,
        price: 6000,
        duration: 3),
    BuildingModel(
        name: "Church",
        image: "assets/images/game_assets/village/images/CHURCH - DAY.png",
        energy: -15,
        people: 3,
        price: 7000,
        duration: 15),
    BuildingModel(
        name: "Bigger House",
        image: "assets/images/game_assets/village/images/HOUSE 2 - DAY.png",
        energy: -10,
        people: 6,
        price: 7000,
        duration: 13),
    BuildingModel(
        name: "Apartment",
        image: "assets/images/game_assets/village/images/building-red-01.png",
        energy: -40,
        people: 20,
        price: 7000,
        duration: 20),
  ];
}
