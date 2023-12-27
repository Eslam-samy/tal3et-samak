import 'dart:convert';
import 'package:dio/dio.dart';

class ErrorModel {
  String status;
  String message;

  ErrorModel({
    required this.status,
    required this.message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      status: json['status'] as String,
      message: json['message'] as String,
    );
  }

  // Convert the ErrorModel instance to a Map (JSON data)
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
    };
  }
}

// Helper method to parse Dio error into ErrorModel
ErrorModel? parseDioError(DioException response) {
  try {
    // Parse JSON string into a Map
    Map<String, dynamic> jsonMap = json.decode(response.response.toString());

    // Create an ErrorModel instance using the factory method
    return ErrorModel.fromJson(jsonMap);
  } catch (e) {
    return null;
  }
}
