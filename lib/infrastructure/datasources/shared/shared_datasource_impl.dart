import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:piramix/config/constants/environment.dart';
import 'package:piramix/domain/datasources/shared/shared_datasource.dart';

class SharedDatasourceImpl implements SharedDatasource {
  final Dio dio = Dio(BaseOptions(baseUrl: Environment.baseUrl));
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  SharedDatasourceImpl() {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final String? token = await _storage.read(key: 'token');
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
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
  Future<Map<String, dynamic>> logIn({
    required String email,
    required String password,
  }) async {
    try {
      final response = await dio.post(
        '/User/login',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = response.data;

        // ✅ Guardamos el token correctamente
        if (responseData.containsKey('token')) {
          await _storage.write(
            key: 'token',
            value: responseData['token']['token'],
          );
        }

        return responseData;
      } else {
        throw Exception('Error en la autenticación: ${response.statusCode}');
      }
    } on DioException catch (e) {
      String errorMessage = 'Error en la autenticación';

      if (e.response != null) {
        errorMessage = e.response?.data['error'] ?? 'Error desconocido';
      } else if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage = 'Tiempo de espera agotado';
      }

      throw Exception(errorMessage);
    }
  }

  @override
  Future<Map<String, dynamic>> getLoggedUserInfo() async {
    try {
      final response = await dio.get('/User/me');

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Error al obtener la información del usuario');
      }
    } on DioException catch (e) {
      String errorMessage = 'Error al obtener la información';

      if (e.response != null) {
        errorMessage = e.response?.data['error'] ?? 'Error desconocido';
      } else if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage = 'Tiempo de espera agotado';
      }

      throw Exception(errorMessage);
    }
  }
}
