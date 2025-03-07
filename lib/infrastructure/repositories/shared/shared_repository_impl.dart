import 'package:piramix/domain/datasources/shared/shared_datasource.dart';
import 'package:piramix/domain/repositories/shared/shared_repository.dart';

class SharedRepositoryImpl implements SharedRepository {
  final SharedDatasource sharedDatasource;

  SharedRepositoryImpl(this.sharedDatasource);

  @override
  Future<Map<String, dynamic>> getLoggedUserInfo() {
    return sharedDatasource.getLoggedUserInfo();
  }

  @override
  Future<Map<String, dynamic>> logIn({
    required String userName,
    required String password,
  }) {
    return sharedDatasource.logIn(userName: userName, password: password);
  }
}
