// To parse this JSON data, do
//
//     final registerRequest = registerRequestFromMap(jsonString);

import 'dart:convert';

RegisterRequest registerRequestFromMap(String str) => RegisterRequest.fromMap(json.decode(str));

String registerRequestToMap(RegisterRequest data) => json.encode(data.toMap());

class RegisterRequest {
  String? username;
  String? email;
  String? password;

  RegisterRequest({
    this.username,
    this.email,
    this.password,
  });

  factory RegisterRequest.fromMap(Map<String, dynamic> json) => RegisterRequest(
    username: json["username"],
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toMap() => {
    "username": username,
    "email": email,
    "password": password,
  };
}
