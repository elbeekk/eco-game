import 'dart:convert';

class ShopItemModel {
  String? name;
  int? people;
  int? energy;
  int? price;
  String? image;
  int? duration;

  ShopItemModel({
    this.name,
    this.people,
    this.energy,
    this.price,
    this.image,
    this.duration,
  });

  ShopItemModel copyWith({
    String? name,
    int? people,
    int? energy,
    int? price,
    String? image,
    int? duration,
  }) =>
      ShopItemModel(
        name: name ?? this.name,
        people: people ?? this.people,
        energy: energy ?? this.energy,
        price: price ?? this.price,
        image: image ?? this.image,
        duration: duration ?? this.duration,
      );

  factory ShopItemModel.fromRawJson(String str) => ShopItemModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ShopItemModel.fromJson(Map<String, dynamic> json) => ShopItemModel(
    name: json["name"],
    people: json["people"],
    energy: json["energy"],
    price: json["price"],
    image: json["image"],
    duration: json["duration"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "people": people,
    "energy": energy,
    "price": price,
    "image": image,
    "duration": duration,
  };
}
