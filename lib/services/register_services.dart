import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:developer';

import 'package:beyond/model/user_model.dart';

class RegisterServices {
  Future<UserModel?> getuserInfo(
      String username, String email, String password) async {
    Map<String, dynamic> data = {
      "username": username,
      "email": email,
      "password": password
    };
    try {
      final response = await http.post(
          Uri.parse("https://beyond.fayisnambiyath.in/api/users/signup"),
          headers: {
            "Content-Type": "application/json",
          },
          body: jsonEncode(data));

      if (response.statusCode == 201) {
        log("${response.statusCode}");
        final result = jsonDecode(response.body);
        final UserModel user = UserModel.fromJson(result);
        log("SucessFully Registered");
        return user;
      } else {
        log("Fail to fetch data with Statuscode :${response.statusCode}");
      }
    } catch (e) {
      log("$e");
    }
    return null;
  }
 
}
