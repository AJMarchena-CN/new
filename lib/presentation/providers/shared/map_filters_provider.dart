// lib/presentation/providers/shared/map_filters_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapFilters {
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;
  final String? searchedLocation;
  final bool isFavorite;
  final Position? position;
  final LatLng? visibleSouthWest; // Esquina inferior izquierda
  final LatLng? visibleNorthEast; // Esquina superior derecha

  const MapFilters({
    this.selectedDate,
    this.selectedTime,
    this.searchedLocation,
    this.isFavorite = false,
    this.position,
    this.visibleSouthWest,
    this.visibleNorthEast,
  });

  MapFilters copyWith({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
    String? searchedLocation,
    bool? isFavorite,
    Position? position,
    LatLng? visibleSouthWest,
    LatLng? visibleNorthEast,
  }) {
    return MapFilters(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
      searchedLocation: searchedLocation ?? this.searchedLocation,
      isFavorite: isFavorite ?? this.isFavorite,
      position: position ?? this.position,
      visibleSouthWest: visibleSouthWest ?? this.visibleSouthWest,
      visibleNorthEast: visibleNorthEast ?? this.visibleNorthEast,
    );
  }
}

class MapFiltersNotifier extends StateNotifier<MapFilters> {
  MapFiltersNotifier() : super(const MapFilters());

  void setDate(DateTime date) {
    state = state.copyWith(selectedDate: date);
  }

  void setTime(TimeOfDay time) {
    state = state.copyWith(selectedTime: time);
  }

  void setSearchedLocation(String location) {
    state = state.copyWith(searchedLocation: location);
  }

  void toggleFavorite() {
    state = state.copyWith(isFavorite: !state.isFavorite);
  }

  void setPosition(Position position) {
    state = state.copyWith(position: position);
  }

  void setVisibleRegion(LatLng southWest, LatLng northEast) {
    state = state.copyWith(
      visibleSouthWest: southWest,
      visibleNorthEast: northEast,
    );
  }
}

final mapFiltersProvider =
    StateNotifierProvider<MapFiltersNotifier, MapFilters>((ref) {
      return MapFiltersNotifier();
    });
