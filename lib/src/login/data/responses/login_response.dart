import 'dart:convert';
import 'package:loans/src/login/domain/entities/user_entity.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  final UserEntity user;
  final String token;

  LoginResponse({
    required this.user,
    required this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        user: UserEntity.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
      };
}
