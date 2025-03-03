import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:piramix/config/constants/environment.dart';
import 'package:piramix/domain/datasources/user_datasource.dart';

class UserDataSourceImpl implements UserDataSource {
  final dio = Dio(BaseOptions(baseUrl: Environment.baseUrl));

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  UserDataSourceImpl() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final String? token = await _storage.read(key: 'token');
          options.headers['Authorization'] = 'Bearer ${token ?? ''}';
          return handler.next(options);
        },
        onError: (DioException error, handler) {
          return handler.next(error);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
      ),
    );
  }

  @override
  Future<void> resetPassword(String email, String code, String newPassword) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<void> sendRecoveryEmail(String email) {
    // TODO: implement sendRecoveryEmail
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfileField(String field, value) {
    // TODO: implement updateProfileField
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfileFields(Map<String, dynamic> fields) {
    // TODO: implement updateProfileFields
    throw UnimplementedError();
  }

  @override
  Future<String> updateTempProvince(String provinceName) {
    // TODO: implement updateTempProvince
    throw UnimplementedError();
  }

  @override
  Future<void> verifyRecoveryCode(String email, String code) {
    // TODO: implement verifyRecoveryCode
    throw UnimplementedError();
  }
}
