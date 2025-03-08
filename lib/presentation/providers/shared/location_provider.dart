// lib/presentation/providers/shared/location_provider.dart
import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:piramix/config/helpers/location_helper.dart';

class LocationNotifier extends StateNotifier<AsyncValue<Position>> {
  LocationNotifier() : super(const AsyncValue.loading()) {
    // Cargar la posición actual con precisión baja por defecto.
    loadCurrentLocation();
  }

  /// Carga la posición actual utilizando el helper.
  Future<void> loadCurrentLocation({
    LocationAccuracy accuracy = LocationAccuracy.low,
  }) async {
    try {
      bool hasPermission =
          await LocationHelper.checkAndRequestLocationPermission();
      if (!hasPermission) {
        throw Exception('Permiso de ubicación denegado.');
      }
      final Position pos = await LocationHelper.getCurrentLocation(
        accuracy: accuracy,
      );
      state = AsyncValue.data(pos);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  /// Actualiza la ubicación a partir del query (ciudad buscada)
  Future<void> updateSearchedLocation(String query) async {
    try {
      final coords = await LocationHelper().getCoordinates(query);
      // Construimos una posición "falsa" con los datos obtenidos.
      // Los demás campos se ponen en 0 o en DateTime.now().
      final newPos = Position(
        latitude: coords['latitude']!,
        longitude: coords['longitude']!,
        timestamp: DateTime.now(),
        accuracy: 0.0,
        altitude: 0.0,
        heading: 0.0,
        speed: 0.0,
        speedAccuracy: 0.0,
        altitudeAccuracy: 0.0,
        headingAccuracy: 0.0,
      );
      state = AsyncValue.data(newPos);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final locationNotifierProvider =
    StateNotifierProvider<LocationNotifier, AsyncValue<Position>>(
      (ref) => LocationNotifier(),
    );

// Provider para buscar coordenadas de un lugar a partir del nombre (si lo sigues necesitando):
final placeCoordinatesProvider =
    FutureProvider.family<Map<String, double>, String>((ref, placeName) async {
      final helper = LocationHelper();
      final coords = await helper.getCoordinates(placeName);
      return coords;
    });
