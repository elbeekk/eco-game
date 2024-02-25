import 'dart:convert';

class MessageModel {
  String? id;
  String? character;
  String? text;

  MessageModel({
    this.id,
    this.character,
    this.text,
  });

  MessageModel copyWith({
    String? id,
    String? character,
    String? text,
  }) =>
      MessageModel(
        id: id ?? this.id,
        character: character ?? this.character,
        text: text ?? this.text,
      );

  factory MessageModel.fromRawJson(String str) => MessageModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
    id: json["id"],
    character: json["character"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "character": character,
    "text": text,
  };
}
