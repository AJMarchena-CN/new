import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';

class TokenMapper {
  static TokenEntity fromModel(TokenModel model) => TokenEntity(
    token: model.token,
    refreshToken: model.refreshToken,
    expireAt: model.expireAt,
  );
}
