class LoginModel {
  LoginModel({
    this.token,
    this.role,
    this.user,
  });

  final String? token;
  final String? role;
  final User? user;

  static LoginModel fromJson(Map<String, dynamic> json) => LoginModel(
        token: json["token"] == null ? null : json["token"],
        role: json["role"] == null ? null : json["role"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
      );
}

class User {
  User({
    this.name,
  });

  final String? name;

  static User fromJson(Map<String, dynamic> json) => User(
        name: json["name"] == null ? null : json["name"],
      );
}
