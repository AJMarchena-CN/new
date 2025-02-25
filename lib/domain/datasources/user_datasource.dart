import 'package:piramix/domain/entities/entities_barrel.dart';

abstract class UserDataSource {
  Future<UserEntity> logIn();

  Future<UserEntity> getLoggedUserInfo();

  Future<void> sendRecoveryEmail(String email);

  Future<void> verifyRecoveryCode(String email, String code);

  Future<void> resetPassword(String email, String code, String newPassword);

  Future<void> updateProfileField(String field, dynamic value);

  Future<void> updateProfileFields(Map<String, dynamic> fields);

  Future<String> updateTempProvince(String provinceName);
}
