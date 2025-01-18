import 'dart:convert';
import 'dart:developer';

import 'package:beyond/model/logUser_model.dart';
import 'package:beyond/model/user_model.dart';
import 'package:http/http.dart' as http;




class LoginServices {
  Future<LogUserModel?> logIn(String email, String password) async {
    Map<String, dynamic> data = {"email": email, "password": password};
    try {
      final response = await http.post(
        Uri.parse("https://beyond.fayisnambiyath.in/api/users/login"),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(data),
      );

      log("Response Status Code: ${response.statusCode}");
      log("Response Body: ${response.body}");

      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        // Check if response contains the required fields
        if (result != null && result is Map<String, dynamic>) {
          final LogUserModel user = LogUserModel.fromJson(result);
          log("Successfully Logged In: ${user.toString()}");
          return user;
        } else {
          log("Invalid response format");
        }
      } else {
        log("Failed to fetch data with Status Code: ${response.statusCode}");
      }
    } catch (e) {
      log("Error during login: $e");
    }
    return null;
  }
}
