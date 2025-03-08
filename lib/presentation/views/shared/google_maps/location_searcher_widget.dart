import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:piramix/config/helpers/figma_helper.dart';
import 'package:piramix/presentation/providers/shared/location_provider.dart';
import 'package:piramix/presentation/providers/shared/map_filters_provider.dart';

class LocationSearchWidget extends ConsumerStatefulWidget {
  final String initialLocation;
  final void Function(String location)? onSearch;

  const LocationSearchWidget({
    super.key,
    required this.initialLocation,
    this.onSearch,
  });

  @override
  LocationSearchWidgetState createState() => LocationSearchWidgetState();
}

class LocationSearchWidgetState extends ConsumerState<LocationSearchWidget> {
  bool isExpanded = false;
  final TextEditingController _citySearchController = TextEditingController();

  // Variables para almacenar filtros localmente.
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  String _tipo = 'libre';

  @override
  void dispose() {
    _citySearchController.dispose();
    super.dispose();
  }

  void collapse() {
    if (mounted) {
      setState(() {
        isExpanded = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return isExpanded
        ? _buildExpandedView(context, primaryColor)
        : _buildCollapsedView(context, primaryColor);
  }

  // Vista colapsada: Muestra una Row con botón 'back-square', texto y botón de favorito.
  Widget _buildCollapsedView(BuildContext context, Color primaryColor) {
    final mapFilters = ref.watch(mapFiltersProvider);
    final isFavorite = mapFilters.isFavorite;
    final locationText =
        (mapFilters.searchedLocation?.isNotEmpty ?? false)
            ? mapFilters.searchedLocation!
            : widget.initialLocation;

    return Container(
      height: 42,
      width: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: primaryColor, width: 1.5),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/shared/back-square.svg',
              height: 20,
            ),
            onPressed: () {
              context.go('/user/home/0');
            },
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isExpanded = true;
                });
              },
              child: Center(
                child: Text(
                  locationText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14.0, color: primaryColor),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              isFavorite ? Icons.star : Icons.star_border,
              color: primaryColor,
              size: 20,
            ),
            onPressed: () {
              ref.read(mapFiltersProvider.notifier).toggleFavorite();
            },
          ),
        ],
      ),
    );
  }

  // Vista expandida: Muestra una Column con opciones para fecha, hora, tipo y ubicación, y un botón "Buscar".
  // Al pulsar "Buscar" se guardan los filtros y se invoca el callback onSearch para reposicionar el marcador.
  Widget _buildExpandedView(BuildContext context, Color primaryColor) {
    final mapFilters = ref.watch(mapFiltersProvider);

    final locationText =
        (mapFilters.searchedLocation?.isNotEmpty ?? false)
            ? mapFilters.searchedLocation!
            : widget.initialLocation;

    final size = MediaQuery.of(context).size;
    final containerSize = FigmaHelper.calculaTamanio(
      figmaDeviceHeight: 852,
      figmaDeviceWidth: 393,
      figmaElementWidth: 170.5,
      figmaElementHeight: 104,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );
    final listTileSize = FigmaHelper.calculaTamanio(
      figmaDeviceHeight: 852,
      figmaDeviceWidth: 393,
      figmaElementWidth: 170.5,
      figmaElementHeight: 21.3,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: collapse,
      onHorizontalDragEnd: (_) => collapse(),
      onVerticalDragEnd: (_) => collapse(),
      child: Container(
        width: containerSize['width'],
        height: containerSize['heigth'],
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: primaryColor, width: 1.5),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // Fecha
            ListTile(
              leading: Icon(Icons.calendar_today, color: primaryColor),
              title: Text(
                _selectedDate != null ? _formatDate(_selectedDate!) : "Fecha",
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () async {
                final now = DateTime.now();
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: now,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (pickedDate != null) {
                  setState(() {
                    _selectedDate = pickedDate;
                  });
                }
              },
            ),
            Divider(color: const Color.fromRGBO(87, 87, 87, 1), thickness: 1.5),
            // Hora
            SizedBox(
              width: double.infinity,
              height: listTileSize['heigth'],
              child: ListTile(
                leading: Icon(Icons.access_time, color: primaryColor),
                title: Text(
                  _selectedTime != null ? _formatTime(_selectedTime!) : "Hora",
                  style: const TextStyle(color: Colors.white),
                ),
                onTap: () async {
                  final now = TimeOfDay.now();
                  final pickedTime = await showTimePicker(
                    context: context,
                    initialTime: now,
                  );
                  if (pickedTime != null) {
                    setState(() {
                      _selectedTime = pickedTime;
                    });
                  }
                },
              ),
            ),
            Divider(color: const Color.fromRGBO(87, 87, 87, 1), thickness: 1.5),
            // Tipo de pista/partido
            SizedBox(
              width: double.infinity,
              height: listTileSize['heigth'],
              child: ListTile(
                leading: Icon(Icons.sports_tennis, color: primaryColor),
                title: Text(
                  _tipoText(_tipo),
                  style: const TextStyle(color: Colors.white),
                ),
                onTap: () {
                  setState(() {
                    if (_tipo == 'libre') {
                      _tipo = 'abierto';
                    } else if (_tipo == 'abierto') {
                      _tipo = 'ambos';
                    } else {
                      _tipo = 'libre';
                    }
                  });
                },
              ),
            ),
            Divider(color: const Color.fromRGBO(87, 87, 87, 1), thickness: 1.5),
            // Ubicación
            SizedBox(
              width: double.infinity,
              height: listTileSize['heigth'],
              child: ListTile(
                leading: Icon(Icons.location_on, color: primaryColor),
                title: TextField(
                  controller: _citySearchController,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText:
                        locationText != null && locationText != ''
                            ? locationText
                            : "cerca de tu ubicación",
                    hintStyle: TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) {
                    setState(() {});
                  },
                ),
              ),
            ),
            // Botón "Buscar"
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ElevatedButton(
                onPressed: () async {
                  final filtersNotifier = ref.read(mapFiltersProvider.notifier);
                  if (_selectedDate != null) {
                    filtersNotifier.setDate(_selectedDate!);
                  }
                  if (_selectedTime != null) {
                    filtersNotifier.setTime(_selectedTime!);
                  }
                  if (_citySearchController.text.isNotEmpty) {
                    filtersNotifier.setSearchedLocation(
                      _citySearchController.text,
                    );
                  }
                  // Aquí podrías guardar el tipo, si amplías MapFilters.

                  // Llamamos al método del locationNotifier para actualizar la ubicación buscada.
                  await ref
                      .read(locationNotifierProvider.notifier)
                      .updateSearchedLocation(_citySearchController.text);

                  collapse();

                  // Invoca el callback onSearch para reposicionar el marcador.
                  if (widget.onSearch != null) {
                    widget.onSearch!(_citySearchController.text);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
                child: const Text(
                  "Buscar",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(DateTime date) {
    return "${_dayOfWeek(date.weekday)}, ${date.day} ${_monthString(date.month)}";
  }

  String _formatTime(TimeOfDay time) {
    return "${time.hour}:${time.minute.toString().padLeft(2, '0')} h.";
  }

  String _tipoText(String tipo) {
    switch (tipo) {
      case 'libre':
        return "Pista Libre";
      case 'abierto':
        return "Partido Abierto";
      case 'ambos':
        return "Libre / Abierto";
      default:
        return "Pista Libre";
    }
  }

  String _dayOfWeek(int weekday) {
    switch (weekday) {
      case 1:
        return "lunes";
      case 2:
        return "martes";
      case 3:
        return "miércoles";
      case 4:
        return "jueves";
      case 5:
        return "viernes";
      case 6:
        return "sábado";
      case 7:
        return "domingo";
      default:
        return "";
    }
  }

  String _monthString(int month) {
    switch (month) {
      case 1:
        return "enero";
      case 2:
        return "febrero";
      case 3:
        return "marzo";
      case 4:
        return "abril";
      case 5:
        return "mayo";
      case 6:
        return "junio";
      case 7:
        return "julio";
      case 8:
        return "agosto";
      case 9:
        return "septiembre";
      case 10:
        return "octubre";
      case 11:
        return "noviembre";
      case 12:
        return "diciembre";
      default:
        return "";
    }
  }
}
