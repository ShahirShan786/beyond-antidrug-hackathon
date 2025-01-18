// To parse this JSON data, do
//
//     final reportModel = reportModelFromJson(jsonString);

import 'dart:convert';

ReportModel reportModelFromJson(String str) => ReportModel.fromJson(json.decode(str));

String reportModelToJson(ReportModel data) => json.encode(data.toJson());

class ReportModel {
    String issue;
    String description;
    String suspectMobile;
    String suspectname;
    double longitude;
    double latitude;
    String id;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    ReportModel({
        required this.issue,
        required this.description,
        required this.suspectMobile,
        required this.suspectname,
        required this.longitude,
        required this.latitude,
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        issue: json["issue"],
        description: json["description"],
        suspectMobile: json["suspectMobile"],
        suspectname: json["suspectname"],
        longitude: json["longitude"]?.toDouble(),
        latitude: json["latitude"]?.toDouble(),
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "issue": issue,
        "description": description,
        "suspectMobile": suspectMobile,
        "suspectname": suspectname,
        "longitude": longitude,
        "latitude": latitude,
        "_id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}
