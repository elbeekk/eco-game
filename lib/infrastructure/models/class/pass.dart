import 'dart:convert';

class PassModel {
  String? aud;
  List<String>? origins;
  String? iss;
  int? iat;
  String? typ;
  Payload? payload;

  PassModel({
    this.aud,
    this.origins,
    this.iss,
    this.iat,
    this.typ,
    this.payload,
  });

  PassModel copyWith({
    String? aud,
    List<String>? origins,
    String? iss,
    int? iat,
    String? typ,
    Payload? payload,
  }) =>
      PassModel(
        aud: aud ?? this.aud,
        origins: origins ?? this.origins,
        iss: iss ?? this.iss,
        iat: iat ?? this.iat,
        typ: typ ?? this.typ,
        payload: payload ?? this.payload,
      );

  factory PassModel.fromRawJson(String str) =>
      PassModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PassModel.fromJson(Map<String, dynamic> json) => PassModel(
        aud: json["aud"],
        origins: json["origins"] == null
            ? []
            : List<String>.from(json["origins"]!.map((x) => x)),
        iss: json["iss"],
        iat: json["iat"],
        typ: json["typ"],
        payload:
            json["payload"] == null ? null : Payload.fromJson(json["payload"]),
      );

  Map<String, dynamic> toJson() => {
        "aud": aud,
        "origins":
            origins == null ? [] : List<dynamic>.from(origins!.map((x) => x)),
        "iss": iss,
        "iat": iat,
        "typ": typ,
        "payload": payload?.toJson(),
      };
}

class Payload {
  List<GenericObject>? genericObjects;

  Payload({
    this.genericObjects,
  });

  Payload copyWith({
    List<GenericObject>? genericObjects,
  }) =>
      Payload(
        genericObjects: genericObjects ?? this.genericObjects,
      );

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
        genericObjects: json["genericObjects"] == null
            ? []
            : List<GenericObject>.from(
                json["genericObjects"]!.map((x) => GenericObject.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "genericObjects": genericObjects == null
            ? []
            : List<dynamic>.from(genericObjects!.map((x) => x.toJson())),
      };
}

class GenericObject {
  String? genericType;
  CardTitle? cardTitle;
  CardTitle? subheader;
  CardTitle? header;
  HeroImage? logo;
  String? hexBackgroundColor;
  String? id;
  String? classId;
  HeroImage? heroImage;
  List<ImageModulesDatum>? imageModulesData;
  List<TextModulesDatum>? textModulesData;
  LinksModuleData? linksModuleData;
  String? state;
  HeroImage? wideLogo;

  GenericObject({
    this.genericType,
    this.cardTitle,
    this.subheader,
    this.header,
    this.logo,
    this.hexBackgroundColor,
    this.id,
    this.classId,
    this.heroImage,
    this.imageModulesData,
    this.textModulesData,
    this.linksModuleData,
    this.state,
    this.wideLogo,
  });

  GenericObject copyWith({
    String? genericType,
    CardTitle? cardTitle,
    CardTitle? subheader,
    CardTitle? header,
    HeroImage? logo,
    String? hexBackgroundColor,
    String? id,
    String? classId,
    HeroImage? heroImage,
    List<ImageModulesDatum>? imageModulesData,
    List<TextModulesDatum>? textModulesData,
    LinksModuleData? linksModuleData,
    String? state,
    HeroImage? wideLogo,
  }) =>
      GenericObject(
        genericType: genericType ?? this.genericType,
        cardTitle: cardTitle ?? this.cardTitle,
        subheader: subheader ?? this.subheader,
        header: header ?? this.header,
        logo: logo ?? this.logo,
        hexBackgroundColor: hexBackgroundColor ?? this.hexBackgroundColor,
        id: id ?? this.id,
        classId: classId ?? this.classId,
        heroImage: heroImage ?? this.heroImage,
        imageModulesData: imageModulesData ?? this.imageModulesData,
        textModulesData: textModulesData ?? this.textModulesData,
        linksModuleData: linksModuleData ?? this.linksModuleData,
        state: state ?? this.state,
        wideLogo: wideLogo ?? this.wideLogo,
      );

  factory GenericObject.fromRawJson(String str) =>
      GenericObject.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GenericObject.fromJson(Map<String, dynamic> json) => GenericObject(
        genericType: json["genericType"],
        cardTitle: json["cardTitle"] == null
            ? null
            : CardTitle.fromJson(json["cardTitle"]),
        subheader: json["subheader"] == null
            ? null
            : CardTitle.fromJson(json["subheader"]),
        header:
            json["header"] == null ? null : CardTitle.fromJson(json["header"]),
        logo: json["logo"] == null ? null : HeroImage.fromJson(json["logo"]),
        hexBackgroundColor: json["hexBackgroundColor"],
        id: json["id"],
        classId: json["classId"],
        heroImage: json["heroImage"] == null
            ? null
            : HeroImage.fromJson(json["heroImage"]),
        imageModulesData: json["imageModulesData"] == null
            ? []
            : List<ImageModulesDatum>.from(json["imageModulesData"]!
                .map((x) => ImageModulesDatum.fromJson(x))),
        textModulesData: json["textModulesData"] == null
            ? []
            : List<TextModulesDatum>.from(json["textModulesData"]!
                .map((x) => TextModulesDatum.fromJson(x))),
        linksModuleData: json["linksModuleData"] == null
            ? null
            : LinksModuleData.fromJson(json["linksModuleData"]),
        state: json["state"],
        wideLogo: json["wideLogo"] == null
            ? null
            : HeroImage.fromJson(json["wideLogo"]),
      );

  Map<String, dynamic> toJson() => {
        "genericType": genericType,
        "cardTitle": cardTitle?.toJson(),
        "subheader": subheader?.toJson(),
        "header": header?.toJson(),
        "logo": logo?.toJson(),
        "hexBackgroundColor": hexBackgroundColor,
        "id": id,
        "classId": classId,
        "heroImage": heroImage?.toJson(),
        "imageModulesData": imageModulesData == null
            ? []
            : List<dynamic>.from(imageModulesData!.map((x) => x.toJson())),
        "textModulesData": textModulesData == null
            ? []
            : List<dynamic>.from(textModulesData!.map((x) => x.toJson())),
        "linksModuleData": linksModuleData?.toJson(),
        "state": state,
        "wideLogo": wideLogo?.toJson(),
      };
}

class CardTitle {
  CardTitleKind? kind;
  List<Value>? translatedValues;
  Value? defaultValue;

  CardTitle({
    this.kind,
    this.translatedValues,
    this.defaultValue,
  });

  CardTitle copyWith({
    CardTitleKind? kind,
    List<Value>? translatedValues,
    Value? defaultValue,
  }) =>
      CardTitle(
        kind: kind ?? this.kind,
        translatedValues: translatedValues ?? this.translatedValues,
        defaultValue: defaultValue ?? this.defaultValue,
      );

  factory CardTitle.fromRawJson(String str) =>
      CardTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CardTitle.fromJson(Map<String, dynamic> json) => CardTitle(
        kind: cardTitleKindValues.map[json["kind"]]!,
        translatedValues: json["translatedValues"] == null
            ? []
            : List<Value>.from(
                json["translatedValues"]!.map((x) => Value.fromJson(x))),
        defaultValue: json["defaultValue"] == null
            ? null
            : Value.fromJson(json["defaultValue"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": cardTitleKindValues.reverse[kind],
        "translatedValues": translatedValues == null
            ? []
            : List<dynamic>.from(translatedValues!.map((x) => x.toJson())),
        "defaultValue": defaultValue?.toJson(),
      };
}

class Value {
  DefaultValueKind? kind;
  Language? language;
  ValueEnum? value;

  Value({
    this.kind,
    this.language,
    this.value,
  });

  Value copyWith({
    DefaultValueKind? kind,
    Language? language,
    ValueEnum? value,
  }) =>
      Value(
        kind: kind ?? this.kind,
        language: language ?? this.language,
        value: value ?? this.value,
      );

  factory Value.fromRawJson(String str) => Value.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        kind: defaultValueKindValues.map[json["kind"]]!,
        language: languageValues.map[json["language"]]!,
        value: valueEnumValues.map[json["value"]]!,
      );

  Map<String, dynamic> toJson() => {
        "kind": defaultValueKindValues.reverse[kind],
        "language": languageValues.reverse[language],
        "value": valueEnumValues.reverse[value],
      };
}

enum DefaultValueKind { WALLETOBJECTS_TRANSLATED_STRING }

final defaultValueKindValues = EnumValues({
  "walletobjects#translatedString":
      DefaultValueKind.WALLETOBJECTS_TRANSLATED_STRING
});

enum Language { enUs }

final languageValues = EnumValues({"en-US": Language.enUs});

enum ValueEnum { first,firstD, second,secondD, third,thirdD,gameName }

final valueEnumValues = EnumValues({
  "First Steps": ValueEnum.first,
  "Eco Game": ValueEnum.gameName,
  "You have completed instructions and was able to build your first home": ValueEnum.firstD,
  "Good Learner": ValueEnum.second,
  "Keep going in this way, because bright future is coming": ValueEnum.secondD,
  "Eco Specialist": ValueEnum.third,
  "You have reached the highest level of being eco friendly": ValueEnum.thirdD,
});

enum CardTitleKind { WALLETOBJECTS_LOCALIZED_STRING }

final cardTitleKindValues = EnumValues({
  "walletobjects#localizedString": CardTitleKind.WALLETOBJECTS_LOCALIZED_STRING
});

class HeroImage {
  String? kind;
  SourceUri? sourceUri;
  CardTitle? contentDescription;

  HeroImage({
    this.kind,
    this.sourceUri,
    this.contentDescription,
  });

  HeroImage copyWith({
    String? kind,
    SourceUri? sourceUri,
    CardTitle? contentDescription,
  }) =>
      HeroImage(
        kind: kind ?? this.kind,
        sourceUri: sourceUri ?? this.sourceUri,
        contentDescription: contentDescription ?? this.contentDescription,
      );

  factory HeroImage.fromRawJson(String str) =>
      HeroImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HeroImage.fromJson(Map<String, dynamic> json) => HeroImage(
        kind: json["kind"],
        sourceUri: json["sourceUri"] == null
            ? null
            : SourceUri.fromJson(json["sourceUri"]),
        contentDescription: json["contentDescription"] == null
            ? null
            : CardTitle.fromJson(json["contentDescription"]),
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "sourceUri": sourceUri?.toJson(),
        "contentDescription": contentDescription?.toJson(),
      };
}

class SourceUri {
  String? uri;
  String? description;
  CardTitle? localizedDescription;

  SourceUri({
    this.uri,
    this.description,
    this.localizedDescription,
  });

  SourceUri copyWith({
    String? uri,
    String? description,
    CardTitle? localizedDescription,
  }) =>
      SourceUri(
        uri: uri ?? this.uri,
        description: description ?? this.description,
        localizedDescription: localizedDescription ?? this.localizedDescription,
      );

  factory SourceUri.fromRawJson(String str) =>
      SourceUri.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SourceUri.fromJson(Map<String, dynamic> json) => SourceUri(
        uri: json["uri"],
        description: json["description"],
        localizedDescription: json["localizedDescription"] == null
            ? null
            : CardTitle.fromJson(json["localizedDescription"]),
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "description": description,
        "localizedDescription": localizedDescription?.toJson(),
      };
}

class ImageModulesDatum {
  HeroImage? mainImage;
  String? id;

  ImageModulesDatum({
    this.mainImage,
    this.id,
  });

  ImageModulesDatum copyWith({
    HeroImage? mainImage,
    String? id,
  }) =>
      ImageModulesDatum(
        mainImage: mainImage ?? this.mainImage,
        id: id ?? this.id,
      );

  factory ImageModulesDatum.fromRawJson(String str) =>
      ImageModulesDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ImageModulesDatum.fromJson(Map<String, dynamic> json) =>
      ImageModulesDatum(
        mainImage: json["mainImage"] == null
            ? null
            : HeroImage.fromJson(json["mainImage"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "mainImage": mainImage?.toJson(),
        "id": id,
      };
}

class LinksModuleData {
  List<Uris>? uris;

  LinksModuleData({
    this.uris,
  });

  LinksModuleData copyWith({
    List<Uris>? uris,
  }) =>
      LinksModuleData(
        uris: uris ?? this.uris,
      );

  factory LinksModuleData.fromRawJson(String str) =>
      LinksModuleData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LinksModuleData.fromJson(Map<String, dynamic> json) =>
      LinksModuleData(
        uris: json["uris"] == null
            ? []
            : List<Uris>.from(json["uris"]!.map((x) => Uris.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "uris": uris == null
            ? []
            : List<dynamic>.from(uris!.map((x) => x.toJson())),
      };
}

class Uris {
  String? kind;
  String? uri;
  String? description;
  CardTitle? localizedDescription;
  String? id;

  Uris({
    this.kind,
    this.uri,
    this.description,
    this.localizedDescription,
    this.id,
  });

  Uris copyWith({
    String? kind,
    String? uri,
    String? description,
    CardTitle? localizedDescription,
    String? id,
  }) =>
      Uris(
        kind: kind ?? this.kind,
        uri: uri ?? this.uri,
        description: description ?? this.description,
        localizedDescription: localizedDescription ?? this.localizedDescription,
        id: id ?? this.id,
      );

  factory Uris.fromRawJson(String str) => Uris.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Uris.fromJson(Map<String, dynamic> json) => Uris(
        kind: json["kind"],
        uri: json["uri"],
        description: json["description"],
        localizedDescription: json["localizedDescription"] == null
            ? null
            : CardTitle.fromJson(json["localizedDescription"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "uri": uri,
        "description": description,
        "localizedDescription": localizedDescription?.toJson(),
        "id": id,
      };
}

class TextModulesDatum {
  String? header;
  String? body;
  CardTitle? localizedHeader;
  CardTitle? localizedBody;
  String? id;

  TextModulesDatum({
    this.header,
    this.body,
    this.localizedHeader,
    this.localizedBody,
    this.id,
  });

  TextModulesDatum copyWith({
    String? header,
    String? body,
    CardTitle? localizedHeader,
    CardTitle? localizedBody,
    String? id,
  }) =>
      TextModulesDatum(
        header: header ?? this.header,
        body: body ?? this.body,
        localizedHeader: localizedHeader ?? this.localizedHeader,
        localizedBody: localizedBody ?? this.localizedBody,
        id: id ?? this.id,
      );

  factory TextModulesDatum.fromRawJson(String str) =>
      TextModulesDatum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TextModulesDatum.fromJson(Map<String, dynamic> json) =>
      TextModulesDatum(
        header: json["header"],
        body: json["body"],
        localizedHeader: json["localizedHeader"] == null
            ? null
            : CardTitle.fromJson(json["localizedHeader"]),
        localizedBody: json["localizedBody"] == null
            ? null
            : CardTitle.fromJson(json["localizedBody"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "header": header,
        "body": body,
        "localizedHeader": localizedHeader?.toJson(),
        "localizedBody": localizedBody?.toJson(),
        "id": id,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
