import 'dart:convert';

class BuildingModel {
  String? id;
  String? name;
  String? image;
  double? positionX;
  double? positionY;
  int? bottom;
  int? left;
  int? width;
  int? height;
  int? price;
  int? energy;
  int? points;
  String? date;
  double? duration;
  String? description;
  int? income;
  bool? isLed;
  bool? isRoof;

  BuildingModel({
    this.id,
    this.name,
    this.image,
    this.positionX,
    this.positionY,
    this.bottom,
    this.left,
    this.width,
    this.height,
    this.price,
    this.energy,
    this.points,
    this.date,
    this.duration,
    this.description,
    this.income,
    this.isLed,
    this.isRoof,
  });

  BuildingModel copyWith({
    String? id,
    String? name,
    String? image,
    double? positionX,
    double? positionY,
    int? bottom,
    int? left,
    int? width,
    int? height,
    int? price,
    int? energy,
    int? points,
    String? date,
    double? duration,
    String? description,
    int? income,
    bool? isLed,
    bool? isRoof,
  }) =>
      BuildingModel(
        id: id ?? this.id,
        name: name ?? this.name,
        image: image ?? this.image,
        positionX: positionX ?? this.positionX,
        positionY: positionY ?? this.positionY,
        bottom: bottom ?? this.bottom,
        left: left ?? this.left,
        width: width ?? this.width,
        height: height ?? this.height,
        price: price ?? this.price,
        energy: energy ?? this.energy,
        points: points ?? this.points,
        date: date ?? this.date,
        duration: duration ?? this.duration,
        description: description ?? this.description,
        income: income ?? this.income,
        isLed: isLed ?? this.isLed,
        isRoof: isRoof ?? this.isRoof,
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
    left: json["left"],
    width: json["width"],
    height: json["height"],
    price: json["price"],
    energy: json["energy"],
    points: json["points"],
    date: json["date"],
    duration: json["duration"]?.toDouble(),
    description: json["description"],
    income: json["income"],
    isLed: json["isLed"],
    isRoof: json["isRoof"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "positionX": positionX,
    "positionY": positionY,
    "bottom": bottom,
    "left": left,
    "width": width,
    "height": height,
    "price": price,
    "energy": energy,
    "points": points,
    "date": date,
    "duration": duration,
    "description": description,
    "income": income,
    "isLed": isLed,
    "isRoof": isRoof,
  };
}
