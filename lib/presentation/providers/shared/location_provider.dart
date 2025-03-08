import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:piramix/config/helpers/location_helper.dart';

// Provider para gestionar la ubicación actual del usuario.
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
      // Primero se verifica y solicita permisos si es necesario.
      bool hasPermission =
          await LocationHelper.checkAndRequestLocationPermission();
      if (!hasPermission) {
        throw Exception('Permiso de ubicación denegado.');
      }
      // Obtiene la posición actual con la precisión indicada.
      final Position pos = await LocationHelper.getCurrentLocation(
        accuracy: accuracy,
      );
      state = AsyncValue.data(pos);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}

final locationNotifierProvider =
    StateNotifierProvider<LocationNotifier, AsyncValue<Position>>(
      (ref) => LocationNotifier(),
    );

// Provider para buscar coordenadas de un lugar a partir de su nombre.
// Usamos un FutureProvider.family para pasar el nombre del lugar.
final placeCoordinatesProvider =
    FutureProvider.family<Map<String, double>, String>((ref, placeName) async {
      final helper = LocationHelper();
      final coords = await helper.getCoordinates(placeName);
      return coords;
    });
