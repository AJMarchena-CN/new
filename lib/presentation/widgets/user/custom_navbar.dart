import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:piramix/config/helpers/figma_helper.dart';
import 'package:go_router/go_router.dart';

class CustomNavbar extends StatefulWidget {
  final int currentIndex;
  const CustomNavbar({super.key, required this.currentIndex});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  late int _currentIndex;
  double resultPLC = 0.0;
  bool isAdmin = false;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.currentIndex;
    _loadPLCValue();
  }

  Future<void> _loadPLCValue() async {
    const FlutterSecureStorage storage = FlutterSecureStorage();
    bool admin = await storage.read(key: 'rol_id') == "2";
    String? plcValue = await storage.read(key: 'plc');

    setState(() {
      isAdmin = admin;
      resultPLC = plcValue != null ? double.parse(plcValue) : 0.0;
    });
  }

  // Método para manejar la pulsación de un ítem del BottomNavigationBar.
  void onItemTapped(BuildContext context, int index) {
    if (index == 0) {
      // Navega a la pantalla alternativa (asegúrate de definir esta ruta en tu GoRouter)
      context.go('/map');
    } else {
      setState(() {
        _currentIndex = index;
      });
      // Para los demás índices, navega a UserHomeScreen con el índice correspondiente.
      context.go('/user/home/$index');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    // Cálculo individual para cada ícono según Figma.
    final iconBall = FigmaHelper.calculaTamanio(
      figmaDeviceHeight: 852,
      figmaDeviceWidth: 393,
      figmaElementWidth: 23.42,
      figmaElementHeight: 23.5,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    final iconLogo = FigmaHelper.calculaTamanio(
      figmaDeviceHeight: 852,
      figmaDeviceWidth: 393,
      figmaElementWidth: 41.11,
      figmaElementHeight: 49.45,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    final iconLiveMatch = FigmaHelper.calculaTamanio(
      figmaDeviceHeight: 852,
      figmaDeviceWidth: 393,
      figmaElementWidth: 52.7,
      figmaElementHeight: 16.42,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    return BottomNavigationBar(
      backgroundColor: theme.scaffoldBackgroundColor,
      currentIndex: _currentIndex,
      onTap: (value) => onItemTapped(context, value),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/shared/nav_ball_active.svg',
            semanticsLabel: 'ball_icon',
            width: iconBall['width'],
            height: iconBall['height'],
          ),
          label: 'map',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/shared/nav-logo.svg',
            semanticsLabel: 'logo_icon',
            width: iconLogo['width'],
            height: iconLogo['height'],
          ),
          label: 'map',
          tooltip: 'Map',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/shared/live-match.svg',
            semanticsLabel: 'camera_icon',
            width: iconLiveMatch['width'],
            height: iconLiveMatch['height'],
          ),
          label: '',
        ),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    );
  }
}
