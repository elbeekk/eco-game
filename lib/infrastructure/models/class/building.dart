import 'dart:convert';

class BuildingModel {
  String? name;
  String? image;
  double? positionX;
  double? positionY;
  double? bottom;
  int? price;
  int? energy;
  String? date;
  double? duration;
  String? description;
  int? income;

  BuildingModel({
    this.name,
    this.image,
    this.positionX,
    this.positionY,
    this.bottom,
    this.price,
    this.energy,
    this.date,
    this.duration,
    this.description,
    this.income,
  });

  BuildingModel copyWith({
    String? name,
    String? image,
    double? positionX,
    double? positionY,
    double? bottom,
    int? price,
    int? energy,
    String? date,
    double? duration,
    String? description,
    int? income,
  }) =>
      BuildingModel(
        name: name ?? this.name,
        image: image ?? this.image,
        positionX: positionX ?? this.positionX,
        positionY: positionY ?? this.positionY,
        bottom: bottom ?? this.bottom,
        price: price ?? this.price,
        energy: energy ?? this.energy,
        date: date ?? this.date,
        duration: duration ?? this.duration,
        description: description ?? this.description,
        income: income ?? this.income,
      );

  factory BuildingModel.fromRawJson(String str) => BuildingModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BuildingModel.fromJson(Map<String, dynamic> json) => BuildingModel(
    name: json["name"],
    image: json["image"],
    positionX: json["positionX"]?.toDouble(),
    positionY: json["positionY"]?.toDouble(),
    bottom: json["bottom"]?.toDouble(),
    price: json["price"],
    energy: json["energy"],
    date: json["date"],
    duration: json["duration"]?.toDouble(),
    description: json["description"],
    income: json["income"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "positionX": positionX,
    "positionY": positionY,
    "bottom": bottom,
    "price": price,
    "energy": energy,
    "date": date,
    "duration": duration,
    "description": description,
    "income": income,
  };
}
