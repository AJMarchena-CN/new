import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:piramix/presentation/providers/club/club_repository_provider.dart';
import 'package:piramix/presentation/providers/shared/location_provider.dart';
import 'package:piramix/presentation/providers/shared/map_filters_provider.dart';
import 'package:piramix/presentation/views/shared/google_maps/location_searcher_widget.dart';
import 'package:piramix/presentation/widgets/shared/custom_flushbar.dart';

class GoogleMapsScreen extends ConsumerStatefulWidget {
  static const name = 'google-maps-screen';
  const GoogleMapsScreen({super.key});

  @override
  GoogleMapsScreenState createState() => GoogleMapsScreenState();
}

class GoogleMapsScreenState extends ConsumerState<GoogleMapsScreen> {
  GoogleMapController? _mapController;
  final TextEditingController _searchController = TextEditingController();

  final CameraPosition _fallbackCameraPosition = const CameraPosition(
    target: LatLng(37.7749, -122.4194),
    zoom: 12,
  );

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onMapCreated(GoogleMapController controller) async {
    _mapController = controller;
    try {
      String style = await rootBundle.loadString('assets/map_style.json');
      controller.setMapStyle(style);
    } catch (e) {
      CustomFlushbar(
        type: MessageType.error,
        title: 'Error al cargar el mapa',
        message: e.toString(),
      );
    }
  }

  // Al obtener la región visible, actualizamos el provider de filtros y forzamos el refresh de los clubs.
  Future<void> _updateVisibleRegion() async {
    if (_mapController != null) {
      final bounds = await _mapController!.getVisibleRegion();
      ref
          .read(mapFiltersProvider.notifier)
          .setVisibleRegion(bounds.southwest, bounds.northeast);
      // Imprimimos las esquinas visibles para verificar:
      print(
        'Visible Region - SW: ${bounds.southwest}, NE: ${bounds.northeast}',
      );

      // Forzamos el refresh del provider de clubs para que se haga la petición con los nuevos filtros.
      ref.refresh(clubsProvider);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Escuchamos la ubicación del usuario para centrar la cámara.
    ref.listen<AsyncValue<Position>>(locationNotifierProvider, (prev, next) {
      next.whenData((pos) {
        if (_mapController != null) {
          _mapController!.animateCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(
                target: LatLng(pos.latitude, pos.longitude),
                zoom: 14,
              ),
            ),
          );
        }
      });
    });

    final locationState = ref.watch(locationNotifierProvider);
    final LatLng currentPosition =
        locationState is AsyncData<Position>
            ? LatLng(
              locationState.value.latitude,
              locationState.value.longitude,
            )
            : _fallbackCameraPosition.target;

    // Marcador del usuario.
    final Marker userMarker = Marker(
      markerId: const MarkerId('user_marker'),
      position: currentPosition,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: const InfoWindow(title: 'Tu ubicación'),
    );

    // Escuchamos los clubs del provider.
    final clubsAsync = ref.watch(clubsProvider);
    final Set<Marker> markers = {userMarker};

    clubsAsync.when(
      data: (clubModel) {
        print(
          "Clubs recibidos: Internos(${clubModel.internos.length}) - Externos(${clubModel.externos.length})",
        );
        // Markers para clubs internos (verde)
        for (final club in clubModel.internos) {
          print(
            "Club Interno: ${club.nombre} en (${club.latitud}, ${club.longitud})",
          );
          markers.add(
            Marker(
              markerId: MarkerId('club_interno_${club.id}'),
              position: LatLng(club.latitud, club.longitud),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueGreen,
              ),
              infoWindow: InfoWindow(title: club.nombre),
            ),
          );
        }
        // Markers para clubs externos (azul)
        for (final club in clubModel.externos) {
          print(
            "Club Externo: ${club.nombre} en (${club.latitud}, ${club.longitud})",
          );
          markers.add(
            Marker(
              markerId: MarkerId('club_externo_${club.id}'),
              position: LatLng(club.latitud, club.longitud),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                BitmapDescriptor.hueBlue,
              ),
              infoWindow: InfoWindow(title: club.nombre),
            ),
          );
        }
      },
      loading: () {},
      error: (err, stack) {
        CustomFlushbar(
          type: MessageType.error,
          title: 'Error al cargar clubs',
          message: err.toString(),
        );
      },
    );

    return Scaffold(
      body: Stack(
        children: [
          // Mapa a pantalla completa.
          SizedBox.expand(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: currentPosition,
                zoom: 14,
              ),
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              markers: markers,
              onCameraIdle: _updateVisibleRegion,
            ),
          ),
          // Widget de búsqueda de ubicación.
          Positioned(
            top: MediaQuery.of(context).padding.top + 60,
            left: 16,
            right: 16,
            child: LocationSearchWidget(
              initialLocation: 'Cerca de ti',
              onSearch: (locationText) async {
                // Actualiza la ubicación buscada.
                await ref
                    .read(locationNotifierProvider.notifier)
                    .updateSearchedLocation(locationText);
                // Luego, actualiza la región visible.
                await _updateVisibleRegion();
              },
            ),
          ),
        ],
      ),
    );
  }
}
