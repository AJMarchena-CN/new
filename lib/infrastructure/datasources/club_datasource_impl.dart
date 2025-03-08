import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:piramix/config/constants/environment.dart';
import 'package:piramix/domain/datasources/club_datasource.dart';
import 'package:piramix/infrastructure/models/club/club_models.dart';

class ClubDatasourceImpl implements ClubDatasource {
  final Dio dio = Dio(BaseOptions(baseUrl: Environment.baseUrl));
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  ClubDatasourceImpl() {
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
  Future<ClubModel> getMapsClubs(Map<String, dynamic> filters) async {
    try {
      final response = await dio.post('/Club/GetClubs', data: filters);
      if (response.statusCode == 200) {
        // Se asume que la respuesta es un JSON que se puede parsear en ClubModel
        return ClubModel.fromJson(response.data as Map<String, dynamic>);
      } else {
        throw Exception('Error al obtener clubs: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Error en la petición getMapsClubs: ${e.message}');
    }
  }

  @override
  Future<void> clubToggleFavorite({required int id}) async {
    try {
      // Se asume que el endpoint para alternar favorito es diferente, por ejemplo:
      final response = await dio.post('/Club/ToggleFavorite?id=$id');
      if (response.statusCode == 200) {
        return;
      } else {
        throw Exception('Error al alternar favorito para el club $id');
      }
    } on DioException catch (e) {
      throw Exception('Error en la petición clubToggleFavorite: ${e.message}');
    }
  }

  @override
  Future<ClubInterno> getClubById({required int id}) async {
    try {
      // Se asume que el endpoint para obtener el detalle de un club es diferente, por ejemplo:
      final response = await dio.get('/Club/GetClubById?id=$id');
      if (response.statusCode == 200) {
        return ClubInterno.fromJson(response.data as Map<String, dynamic>);
      } else {
        throw Exception('Error al obtener detalles del club $id');
      }
    } on DioException catch (e) {
      throw Exception('Error en la petición getClubById: ${e.message}');
    }
  }
}
