// To parse this JSON data, do
//
//     final reqRespRespuesta = reqRespRespuestaFromJson(jsonString);

import 'dart:convert';

ReqRespRespuesta reqRespRespuestaFromJson(String str) =>
    ReqRespRespuesta.fromJson(json.decode(str));

String reqRespRespuestaToJson(ReqRespRespuesta data) =>
    json.encode(data.toJson());

class ReqRespRespuesta {
  ReqRespRespuesta({
    this.greeting,
    this.instructions,
  });

  String? greeting;
  List<String>? instructions;

  factory ReqRespRespuesta.fromJson(Map<String, dynamic> json) =>
      ReqRespRespuesta(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions!.map((x) => x)),
      };
}
