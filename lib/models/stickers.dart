// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

//String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
         required this.records,
    });

    List<Record> records;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        records: List<Record>.from(json["records"].map((x) => Record.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "records": List<dynamic>.from(records.map((x) => x.toJson())),
    };
}

class Record {
    Record({
         required this.id,
         required this.fields,
         required this.createdTime,
    });

    String id;
    Fields fields;
    DateTime createdTime;

    factory Record.fromJson(Map<String, dynamic> json) => Record(
        id: json["id"],
        fields: Fields.fromJson(json["fields"]),
        createdTime: DateTime.parse(json["createdTime"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "fields": fields.toJson(),
        "createdTime": createdTime.toIso8601String(),
    };
}

class Fields {
    Fields({
         required this.publicador,
         required this.icono,
         required this.configJson,
         required this.identificador,
         required this.stickers,
         required this.name,
    });

    String publicador;
    List<ConfigJson> icono;
    List<ConfigJson> configJson;
    String identificador;
    List<Sticker> stickers;
    String name;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        publicador: json["publicador"],
        icono: List<ConfigJson>.from(json["icono"].map((x) => ConfigJson.fromJson(x))),
        configJson: List<ConfigJson>.from(json["configJson"].map((x) => ConfigJson.fromJson(x))),
        identificador: json["identificador"],
        stickers: List<Sticker>.from(json["stickers"].map((x) => Sticker.fromJson(x))),
        name: json["Name"],
    );

    Map<String, dynamic> toJson() => {
        "publicador": publicador,
        "icono": List<dynamic>.from(icono.map((x) => x.toJson())),
        "configJson": List<dynamic>.from(configJson.map((x) => x.toJson())),
        "identificador": identificador,
        "stickers": List<dynamic>.from(stickers.map((x) => x.toJson())),
        "Name": name,
    };
}

class ConfigJson {
    ConfigJson({
         required this.id,
         required this.url,
         required this.filename,
         required this.size,
         required this.type,
    });

    String id;
    String url;
    String filename;
    int size;
    String type;

    factory ConfigJson.fromJson(Map<String, dynamic> json) => ConfigJson(
        id: json["id"],
        url: json["url"],
        filename: json["filename"],
        size: json["size"],
        // ignore: prefer_if_null_operators
        type: json["type"] == null ? null : json["type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "filename": filename,
        "size": size,
        // ignore: prefer_if_null_operators, unnecessary_null_comparison
        "type": type == null ? null : type,
    };
}

class Sticker {
    Sticker({
         required this.id,
         required this.width,
         required this.height,
         required this.url,
         required this.filename,
         required this.size,
    });

    String id;
    int width;
    int height;
    String url;
    String filename;
    int size;

    factory Sticker.fromJson(Map<String, dynamic> json) => Sticker(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        filename: json["filename"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "filename": filename,
        "size": size,
    };
}
