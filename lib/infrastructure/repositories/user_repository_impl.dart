import 'package:piramix/domain/datasources/user_datasource.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<UserEntity> getLoggedUserInfo() {
    return userDataSource.getLoggedUserInfo();
  }

  @override
  Future<UserEntity> logIn({required String email, required String password}) {
    return userDataSource.logIn(email: email, password: password);
  }

  @override
  Future<void> resetPassword(String email, String code, String newPassword) {
    return userDataSource.resetPassword(email, code, newPassword);
  }

  @override
  Future<void> sendRecoveryEmail(String email) {
    return userDataSource.sendRecoveryEmail(email);
  }

  @override
  Future<void> updateProfileField(String field, value) {
    return userDataSource.updateProfileField(field, value);
  }

  @override
  Future<void> updateProfileFields(Map<String, dynamic> fields) {
    return userDataSource.updateProfileFields(fields);
  }

  @override
  Future<String> updateTempProvince(String provinceName) {
    return userDataSource.updateTempProvince(provinceName);
  }

  @override
  Future<void> verifyRecoveryCode(String email, String code) {
    return userDataSource.verifyRecoveryCode(email, code);
  }
}
