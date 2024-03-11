import 'dart:convert';

class BuildingModel {
  String? id;
  String? name;
  String? image;
  double? positionX;
  double? positionY;
  int? bottom;
  int? width;
  int? height;
  int? price;
  int? energy;
  int? points;
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
    this.width,
    this.height,
    this.price,
    this.energy,
    this.points,
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
    int? bottom,
    int? width,
    int? height,
    int? price,
    int? energy,
    int? points,
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
        width: width ?? this.width,
        height: height ?? this.height,
        price: price ?? this.price,
        energy: energy ?? this.energy,
        points: points ?? this.points,
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
    bottom: json["bottom"],
    width: json["width"],
    height: json["height"],
    price: json["price"],
    energy: json["energy"],
    points: json["points"],
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
    "width": width,
    "height": height,
    "price": price,
    "energy": energy,
    "points": points,
    "date": date,
    "duration": duration,
    "description": description,
    "income": income,
  };
}
