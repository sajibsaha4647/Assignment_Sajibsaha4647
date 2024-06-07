// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromMap(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromMap(dynamic str) => LoginResponse.fromMap((str as dynamic));

String loginResponseToMap(LoginResponse data) => json.encode(data.toMap());

class LoginResponse {
  String? token;
  String? userEmail;
  String? userNicename;
  String? userDisplayName;

  LoginResponse({
    this.token,
    this.userEmail,
    this.userNicename,
    this.userDisplayName,
  });

  factory LoginResponse.fromMap(Map<String, dynamic> json) => LoginResponse(
    token: json["token"],
    userEmail: json["user_email"],
    userNicename: json["user_nicename"],
    userDisplayName: json["user_display_name"],
  );

  Map<String, dynamic> toMap() => {
    "token": token,
    "user_email": userEmail,
    "user_nicename": userNicename,
    "user_display_name": userDisplayName,
  };
}
