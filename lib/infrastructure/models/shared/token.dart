class TokenModel {
  final String token;
  final String refreshToken;
  final DateTime expireAt;

  TokenModel({
    required this.token,
    required this.refreshToken,
    required this.expireAt,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      token: json['token'],
      refreshToken: json['refreshToken'],
      expireAt: DateTime.parse(json['expireAt']),
    );
  }

  Map<String, dynamic> toJson() => {
    'token': token,
    'refreshToken': refreshToken,
    'expireAt': expireAt.toIso8601String(),
  };
}
