import 'package:isar/isar.dart';

part 'token.g.dart';

@collection
class TokenEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar
  late String token;
  late String refreshToken;
  late DateTime expireAt;

  TokenEntity({
    required this.token,
    required this.refreshToken,
    required this.expireAt,
  });
}
