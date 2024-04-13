class LoginRequestModel {
  final String login_id;
  final String password;

  const LoginRequestModel({required this.login_id, required this.password});

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'login_id': String login_id, 'password': String password} =>
          LoginRequestModel(login_id: login_id, password: password),
      _ => throw const FormatException('Failed to load LoginRequestModel.'),
    };
  }
}