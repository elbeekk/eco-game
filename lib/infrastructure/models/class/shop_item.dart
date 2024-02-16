import 'dart:convert';

class ShopItemModel {
  String? name;
  int? people;
  int? energy;
  int? price;
  String? image;

  ShopItemModel({
    this.name,
    this.people,
    this.energy,
    this.price,
    this.image,
  });

  ShopItemModel copyWith({
    String? name,
    int? people,
    int? energy,
    int? price,
    String? image,
  }) =>
      ShopItemModel(
        name: name ?? this.name,
        people: people ?? this.people,
        energy: energy ?? this.energy,
        price: price ?? this.price,
        image: image ?? this.image,
      );

  factory ShopItemModel.fromRawJson(String str) => ShopItemModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShopItemModel.fromJson(Map<String, dynamic> json) => ShopItemModel(
    name: json["name"],
    people: json["people"],
    energy: json["energy"],
    price: json["price"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "people": people,
    "energy": energy,
    "price": price,
    "image": image,
  };
}
