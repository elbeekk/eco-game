import 'dart:convert';

class BuildingModel {
  String? name;
  String? image;
  double? positionX;
  double? positionY;
  double? sizeX;
  double? sizeY;
  int? price;
  int? energy;
  int? people;
  String? date;
  int? duration;

  BuildingModel({
    this.name,
    this.image,
    this.positionX,
    this.positionY,
    this.sizeX,
    this.sizeY,
    this.price,
    this.energy,
    this.people,
    this.date,
    this.duration,
  });

  BuildingModel copyWith({
    String? name,
    String? image,
    double? positionX,
    double? positionY,
    double? sizeX,
    double? sizeY,
    int? price,
    int? energy,
    int? people,
    String? date,
    int? duration,
  }) =>
      BuildingModel(
        name: name ?? this.name,
        image: image ?? this.image,
        positionX: positionX ?? this.positionX,
        positionY: positionY ?? this.positionY,
        sizeX: sizeX ?? this.sizeX,
        sizeY: sizeY ?? this.sizeY,
        price: price ?? this.price,
        energy: energy ?? this.energy,
        people: people ?? this.people,
        date: date ?? this.date,
        duration: duration ?? this.duration,
      );

  factory BuildingModel.fromRawJson(String str) => BuildingModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BuildingModel.fromJson(Map<String, dynamic> json) => BuildingModel(
    name: json["name"],
    image: json["image"],
    positionX: json["positionX"]?.toDouble(),
    positionY: json["positionY"]?.toDouble(),
    sizeX: json["sizeX"]?.toDouble(),
    sizeY: json["sizeY"]?.toDouble(),
    price: json["price"],
    energy: json["energy"],
    people: json["people"],
    date: json["date"],
    duration: json["duration"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "positionX": positionX,
    "positionY": positionY,
    "sizeX": sizeX,
    "sizeY": sizeY,
    "price": price,
    "energy": energy,
    "people": people,
    "date": date,
    "duration": duration,
  };
}
