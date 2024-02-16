import 'package:eco_game/infrastructure/models/class/shop_item.dart';
import 'package:flutter/material.dart';

class LocalData {
  LocalData._();

  static List<ShopItemModel> shopItems = [
    ShopItemModel(
        name: "House",
        image: "assets/images/game_assets/village/images/HOUSE 1 - DAY.png",
        energy: -5,
        people: 3,
        price: 2000),
    ShopItemModel(
        name: "Solar Panel",
        image: "assets/images/game_assets/village/images/solarPanel.png",
        energy: 15,
        people: 0,
        price: 6000),
  ];
}
