class LoginRequestModel {
  final String loginId;
  final String password;

  const LoginRequestModel({required this.loginId, required this.password});

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'login_id': String loginId, 'password': String password} =>
        LoginRequestModel(loginId: loginId, password: password),
      _ => throw const FormatException('Failed to load LoginRequestModel.'),
    };
  }
}
