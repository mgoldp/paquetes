// To parse this JSON data, do
//
//     final reqRespRespuesta = reqRespRespuestaFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/clases/persona.dart';

ReqRespRespuesta reqRespRespuestaFromJson(String str) =>
    ReqRespRespuesta.fromJson(json.decode(str));

String reqRespRespuestaToJson(ReqRespRespuesta data) =>
    json.encode(data.toJson());

class ReqRespRespuesta {
  ReqRespRespuesta({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> data;
  Support support;

  factory ReqRespRespuesta.fromJson(Map<String, dynamic> json) =>
      ReqRespRespuesta(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}
