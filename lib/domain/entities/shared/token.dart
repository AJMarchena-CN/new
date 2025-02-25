class TokenEntity {
  final String token;
  final String refreshToken;
  final DateTime expireAt;

  TokenEntity({
    required this.token,
    required this.refreshToken,
    required this.expireAt,
  });
}
