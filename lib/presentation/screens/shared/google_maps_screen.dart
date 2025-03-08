import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:piramix/config/helpers/location_helper.dart';
import 'package:piramix/presentation/providers/shared/location_provider.dart';
import 'package:piramix/presentation/widgets/shared/custom_flushbar.dart';

class GoogleMapsScreen extends ConsumerStatefulWidget {
  static const name = 'google-maps-screen';
  const GoogleMapsScreen({Key? key}) : super(key: key);

  @override
  _GoogleMapsScreenState createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends ConsumerState<GoogleMapsScreen> {
  GoogleMapController? _mapController;
  // Campo para almacenar la posición buscada (si el usuario la ingresa)
  LatLng? _searchedPosition;
  // Controlador para el campo de búsqueda.
  final TextEditingController _searchController = TextEditingController();

  // Definimos una posición inicial de respaldo
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

  // Función para buscar una ubicación por nombre y actualizar _searchedPosition.
  Future<void> _searchLocation() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;
    try {
      // Usamos el provider placeCoordinatesProvider para obtener las coordenadas.
      final coords = await ref.read(placeCoordinatesProvider(query).future);
      setState(() {
        _searchedPosition = LatLng(coords['latitude']!, coords['longitude']!);
      });
      // Mover la cámara a la ubicación buscada.
      _mapController?.animateCamera(
        CameraUpdate.newLatLngZoom(_searchedPosition!, 14),
      );
    } catch (e) {
      CustomFlushbar(
        type: MessageType.error,
        title: 'Error al buscar ubicación',
        message: e.toString(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Obtenemos la posición actual a través del provider.
    final locationState = ref.watch(locationNotifierProvider);
    // Si hay una posición buscada, la usamos; de lo contrario, si el provider tiene data, usamos esa.
    final LatLng currentPosition =
        _searchedPosition ??
        (locationState is AsyncData<Position>
            ? LatLng(
              locationState.value.latitude,
              locationState.value.longitude,
            )
            : _fallbackCameraPosition.target);

    // Definimos el marcador del usuario (si no se ha buscado, se coloca en la posición actual, de lo contrario en la buscada)
    final Marker userMarker = Marker(
      markerId: const MarkerId('user_marker'),
      position: currentPosition,
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: const InfoWindow(title: 'Tu ubicación'),
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
              markers: {userMarker},
            ),
          ),
          // Row superpuesta en la parte superior con botón de retroceso, título y botón de estrella.
          Positioned(
            top: MediaQuery.of(context).padding.top + 8,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    context.go('/user/home/0');
                  },
                ),
                const Text(
                  'Google Maps',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.star_border, color: Colors.white),
                  onPressed: () {
                    // Acción para el botón de estrella.
                  },
                ),
              ],
            ),
          ),
          // Campo de búsqueda posicionado en la parte superior, debajo de la row.
          Positioned(
            top: MediaQuery.of(context).padding.top + 60,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        hintText: 'Buscar ciudad...',
                        border: InputBorder.none,
                      ),
                      textInputAction: TextInputAction.search,
                      onSubmitted: (_) => _searchLocation(),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: _searchLocation,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
