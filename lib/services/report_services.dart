  import 'dart:convert';

import 'package:beyond/model/report_model.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';


class ReportServices {



Future<ReportModel?> report(
    String issue,
    String suspectName,
    String suspectMobile,
    String description,
    double latitude,
    double longitude) async {
  Map<String, dynamic> data = {
    "issue": issue,
    "suspectname": suspectName,
    "suspectMobile": suspectMobile, // Fixed typo
    "description": description,
    "latitude": latitude,
    "longitude": longitude
  };

  log("Request data: ${jsonEncode(data)}");

  try {
    final response = await http.post(
      Uri.parse("https://beyond.fayisnambiyath.in/api/report/addReport"),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      log("${response.statusCode}");
      final result = jsonDecode(response.body);
      final ReportModel reportData = ReportModel.fromJson(result);
      log("Report Successfully Submitted");
      return reportData;
    } else {
      log("Failed to fetch data. Status code: ${response.statusCode}, Response: ${response.body}");
    }
  } catch (e) {
    log("Error: $e");
  }

  return null;
}


}