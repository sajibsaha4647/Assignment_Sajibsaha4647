// To parse this JSON data, do
//
//     final registerResponse = registerResponseFromMap(jsonString);

import 'dart:convert';

RegisterResponse registerResponseFromMap(dynamic str) => RegisterResponse.fromMap((str as dynamic));

String registerResponseToMap(RegisterResponse data) => json.encode(data.toMap());

class RegisterResponse {
  int? code;
  String? message;

  RegisterResponse({
    this.code,
    this.message,
  });

  factory RegisterResponse.fromMap(Map<String, dynamic> json) => RegisterResponse(
    code: json["code"],
    message: json["message"],
  );

  Map<String, dynamic> toMap() => {
    "code": code,
    "message": message,
  };
}
