// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    String username;
    String email;
    String password;
    bool isGuest;
    String id;
    DateTime createdAt;
    DateTime updatedAt;
    int v;

    UserModel({
        required this.username,
        required this.email,
        required this.password,
        required this.isGuest,
        required this.id,
        required this.createdAt,
        required this.updatedAt,
        required this.v,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        username: json["username"],
        email: json["email"],
        password: json["password"],
        isGuest: json["isGuest"],
        id: json["_id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "password": password,
        "isGuest": isGuest,
        "_id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "__v": v,
    };
}