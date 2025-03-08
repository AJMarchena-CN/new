class TokenModel {
  final String token;
  final String refreshToken;
  final String expiresAt;

  TokenModel({
    required this.token,
    required this.refreshToken,
    required this.expiresAt,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      token: json['token'] != null ? json['token'] as String : '',
      refreshToken:
          json['refreshToken'] != null ? json['refreshToken'] as String : '',
      expiresAt: json['expiresAt'] != null ? json['expiresAt'] as String : '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'refreshToken': refreshToken,
      'expiresAt': expiresAt,
    };
  }
}
