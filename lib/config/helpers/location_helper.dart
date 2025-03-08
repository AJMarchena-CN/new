import 'dart:async';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:piramix/config/constants/environment.dart';

class LocationHelper {
  final apiKey = Environment.googleApiKey; // Tu clave de API de Google Maps
  final Dio dio;

  LocationHelper({Dio? dio}) : dio = dio ?? Dio();

  // 1. Comprobar permisos de geolocalización
  static Future<LocationPermission> checkLocationPermission() async {
    return await Geolocator.checkPermission();
  }

  // 2. Solicitar permisos de geolocalización
  static Future<LocationPermission> requestLocationPermission() async {
    return await Geolocator.requestPermission();
  }

  // 3. Obtener la posición actual del usuario (intentando primero con la última posición conocida)
  static Future<Position> getCurrentLocation({
    LocationAccuracy accuracy = LocationAccuracy.low,
  }) async {
    try {
      // Verificar permisos antes de obtener la ubicación
      LocationPermission permission = await checkLocationPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await requestLocationPermission();
        if (permission == LocationPermission.denied ||
            permission == LocationPermission.deniedForever) {
          throw Exception('Permiso de ubicación denegado.');
        }
      }
      // Intentar obtener la última posición conocida
      Position? lastKnownPosition = await Geolocator.getLastKnownPosition();
      if (lastKnownPosition != null) {
        return lastKnownPosition;
      }
      // Si no hay posición conocida, obtener la ubicación actual
      return await Geolocator.getCurrentPosition(desiredAccuracy: accuracy);
    } catch (e) {
      rethrow;
    }
  }

  // 4. Obtener coordenadas a partir del nombre de la localización utilizando Dio.
  Future<Map<String, double>> getCoordinates(String locationName) async {
    const endpoint = 'https://maps.googleapis.com/maps/api/geocode/json';
    final query = '?address=$locationName&key=$apiKey';
    final response = await dio.get(endpoint + query);
    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final results = data['results'] as List<dynamic>;
        if (results.isNotEmpty) {
          final geometry = results[0]['geometry'];
          final location = geometry['location'];
          final lat = location['lat'] as double;
          final lng = location['lng'] as double;
          return {'latitude': lat, 'longitude': lng};
        }
      }
    }
    return {
      'latitude': 0.0,
      'longitude': 0.0,
    }; // En caso de error o no encontrar el lugar.
  }

  // 5. Calcular la distancia entre dos puntos (en kilómetros)
  double calculateDistance(LatLng start, LatLng end) {
    const p = 0.017453292519943295; // Math.PI / 180
    final a =
        0.5 -
        cos((end.latitude - start.latitude) * p) / 2 +
        cos(start.latitude * p) *
            cos(end.latitude * p) *
            (1 - cos((end.longitude - start.longitude) * p)) /
            2;
    return 12742 * asin(sqrt(a)); // 2 * R; R = 6371 km
  }

  // 6. Obtener el nombre de la provincia (administrative_area_level_2) mediante coordenadas
  Future<String> getProvinceFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    const endpoint = 'https://maps.googleapis.com/maps/api/geocode/json';
    final query = '?latlng=$latitude,$longitude&key=$apiKey';
    final response = await dio.get(endpoint + query);
    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final results = data['results'] as List<dynamic>;
        if (results.isNotEmpty) {
          final addressComponents =
              results[0]['address_components'] as List<dynamic>;
          for (var component in addressComponents) {
            final types = component['types'] as List<dynamic>;
            if (types.contains('administrative_area_level_2')) {
              return component['long_name'];
            }
          }
        }
      }
    }
    return 'Provincia desconocida';
  }

  // Función para obtener la posición actual del usuario si se han otorgado permisos.
  static Future<Position> getCurrentLocationIfPermission() async {
    try {
      bool hasPermission = await checkAndRequestLocationPermission();
      if (!hasPermission) {
        throw Exception('Permiso de ubicación denegado');
      }
      return await getCurrentLocation();
    } catch (e) {
      if (e is TimeoutException) {
        throw Exception(
          'Tiempo de espera agotado al intentar obtener la ubicación',
        );
      }
      rethrow;
    }
  }

  // Función para verificar y solicitar permisos de ubicación
  static Future<bool> checkAndRequestLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always;
  }
}
