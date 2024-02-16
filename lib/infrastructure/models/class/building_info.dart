import 'dart:convert';

class BuildingInfoModel {
  String? name;
  double? positionX;
  double? positionY;
  double? sizeX;
  double? sizeY;
  int? price;
  int? energy;
  int? people;
  String? date;

  BuildingInfoModel({
    this.name,
    this.positionX,
    this.positionY,
    this.sizeX,
    this.sizeY,
    this.price,
    this.energy,
    this.people,
    this.date,
  });

  BuildingInfoModel copyWith({
    String? name,
    double? positionX,
    double? positionY,
    double? sizeX,
    double? sizeY,
    int? price,
    int? energy,
    int? people,
    String? date,
  }) =>
      BuildingInfoModel(
        name: name ?? this.name,
        positionX: positionX ?? this.positionX,
        positionY: positionY ?? this.positionY,
        sizeX: sizeX ?? this.sizeX,
        sizeY: sizeY ?? this.sizeY,
        price: price ?? this.price,
        energy: energy ?? this.energy,
        people: people ?? this.people,
        date: date ?? this.date,
      );

  factory BuildingInfoModel.fromRawJson(String str) => BuildingInfoModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BuildingInfoModel.fromJson(Map<String, dynamic> json) => BuildingInfoModel(
    name: json["name"],
    positionX: json["positionX"]?.toDouble(),
    positionY: json["positionY"]?.toDouble(),
    sizeX: json["sizeX"]?.toDouble(),
    sizeY: json["sizeY"]?.toDouble(),
    price: json["price"],
    energy: json["energy"],
    people: json["people"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "positionX": positionX,
    "positionY": positionY,
    "sizeX": sizeX,
    "sizeY": sizeY,
    "price": price,
    "energy": energy,
    "people": people,
    "date": date,
  };
}
