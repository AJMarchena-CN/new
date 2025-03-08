// lib/presentation/providers/shared/clubs_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:piramix/domain/repositories/club_repository.dart';
import 'package:piramix/infrastructure/datasources/club_datasource_impl.dart';
import 'package:piramix/infrastructure/models/club/club_models.dart';
import 'package:piramix/infrastructure/repositories/club_repository_impl.dart';
import 'package:piramix/presentation/providers/shared/location_provider.dart';
import 'package:piramix/presentation/providers/shared/map_filters_provider.dart';

// Suponemos que ya tienes definido un provider para ClubRepository:
final clubRepositoryProvider = Provider<ClubRepository>((ref) {
  return ClubRepositoryImpl(ClubDatasourceImpl());
});

final clubsProvider = FutureProvider.autoDispose<ClubModel>((ref) async {
  final filters = ref.watch(mapFiltersProvider);
  final locationState = ref.watch(locationNotifierProvider);
  if (locationState is AsyncData) {
    final userLat = locationState.value?.latitude;
    final userLon = locationState.value?.longitude;
    final Map<String, dynamic> filterMap = {
      "fecha": filters.selectedDate?.toIso8601String(),
      "hora":
          filters.selectedTime != null
              ? "${filters.selectedTime!.hour}:${filters.selectedTime!.minute}"
              : null,
      "esFavorito": filters.isFavorite,
      "latMin": filters.visibleSouthWest?.latitude,
      "latMax": filters.visibleNorthEast?.latitude,
      "lonMin": filters.visibleSouthWest?.longitude,
      "lonMax": filters.visibleNorthEast?.longitude,
      "userLat": userLat,
      "userLon": userLon,
      // Puedes incluir más campos si lo requieres.
    };
    // Removemos los campos nulos:
    filterMap.removeWhere((key, value) => value == null);
    final clubRepository = ref.read(clubRepositoryProvider);
    return await clubRepository.getMapsClubs(filterMap);
  } else {
    throw Exception("Posición de usuario no disponible");
  }
});
