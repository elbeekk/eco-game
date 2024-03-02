import 'dart:convert';

class BuildingModel {
  String? id;
  String? name;
  String? image;
  double? positionX;
  double? positionY;
  double? bottom;
  int? price;
  int? energy;
  int? people;
  String? date;
  double? duration;
  String? description;
  int? income;

  BuildingModel({
    this.id,
    this.name,
    this.image,
    this.positionX,
    this.positionY,
    this.bottom,
    this.price,
    this.energy,
    this.people,
    this.date,
    this.duration,
    this.description,
    this.income,
  });

  BuildingModel copyWith({
    String? id,
    String? name,
    String? image,
    double? positionX,
    double? positionY,
    double? bottom,
    int? price,
    int? energy,
    int? people,
    String? date,
    double? duration,
    String? description,
    int? income,
  }) =>
      BuildingModel(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        positionX: positionX ?? this.positionX,
        positionY: positionY ?? this.positionY,
        bottom: bottom ?? this.bottom,
        price: price ?? this.price,
        energy: energy ?? this.energy,
        people: people ?? this.people,
        date: date ?? this.date,
        duration: duration ?? this.duration,
        description: description ?? this.description,
        income: income ?? this.income,
      );

  factory BuildingModel.fromRawJson(String str) => BuildingModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BuildingModel.fromJson(Map<String, dynamic> json) => BuildingModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    positionX: json["positionX"]?.toDouble(),
    positionY: json["positionY"]?.toDouble(),
    bottom: json["bottom"]?.toDouble(),
    price: json["price"],
    energy: json["energy"],
    people: json["people"],
    date: json["date"],
    duration: json["duration"]?.toDouble(),
    description: json["description"],
    income: json["income"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "positionX": positionX,
    "positionY": positionY,
    "bottom": bottom,
    "price": price,
    "energy": energy,
    "people": people,
    "date": date,
    "duration": duration,
    "description": description,
    "income": income,
  };
}
