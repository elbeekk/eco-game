import 'dart:convert';

class UserModel {
  String? id;
  String? firstName;
  String? lastName;
  int? coins;
  String? email;
  String? joinedDate;
  String? password;
  String? username;
  String? photoUrl;

  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.coins,
    this.email,
    this.joinedDate,
    this.password,
    this.username,
    this.photoUrl,
  });

  UserModel copyWith({
    String? id,
    String? firstName,
    String? lastName,
    int? coins,
    String? email,
    String? joinedDate,
    String? password,
    String? username,
    String? photoUrl,
  }) =>
      UserModel(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        coins: coins ?? this.coins,
        email: email ?? this.email,
        joinedDate: joinedDate ?? this.joinedDate,
        password: password ?? this.password,
        username: username ?? this.username,
        photoUrl: photoUrl ?? this.photoUrl,
      );

  factory UserModel.fromRawJson(String str) => UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    coins: json["coins"],
    email: json["email"],
    joinedDate: json["joinedDate"],
    password: json["password"],
    username: json["username"],
    photoUrl: json["photoUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "firstName": firstName,
    "lastName": lastName,
    "coins": coins,
    "email": email,
    "joinedDate": joinedDate,
    "password": password,
    "username": username,
    "photoUrl": photoUrl,
  };
}
