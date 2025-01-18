// To parse this JSON data, do
//
//     final logUserModel = logUserModelFromJson(jsonString);

import 'dart:convert';

LogUserModel logUserModelFromJson(String str) => LogUserModel.fromJson(json.decode(str));

String logUserModelToJson(LogUserModel data) => json.encode(data.toJson());

class LogUserModel {
    String message;
    User user;

    LogUserModel({
        required this.message,
        required this.user,
    });

    factory LogUserModel.fromJson(Map<String, dynamic> json) => LogUserModel(
        message: json["message"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
    };
}

class User {
    String username;
    String email;

    User({
        required this.username,
        required this.email,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        username: json["username"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
    };
}
