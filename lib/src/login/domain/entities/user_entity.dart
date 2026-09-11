class UserEntity {
  final int id;
  final String name;
  final String lastName;
  final String email;
  final String password;
  final String phoneNumber;
  final bool isValidated;
  final dynamic validationCode;
  final dynamic salt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;

  UserEntity({
    required this.id,
    required this.name,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.isValidated,
    required this.validationCode,
    required this.salt,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory UserEntity.fromJson(Map<String, dynamic> json) => UserEntity(
        id: json["id"],
        name: json["name"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        phoneNumber: json["phoneNumber"],
        isValidated: json["isValidated"],
        validationCode: json["validationCode"],
        salt: json["salt"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "lastName": lastName,
        "email": email,
        "password": password,
        "phoneNumber": phoneNumber,
        "isValidated": isValidated,
        "validationCode": validationCode,
        "salt": salt,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "deletedAt": deletedAt,
      };
}
