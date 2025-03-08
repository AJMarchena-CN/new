import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:piramix/config/helpers/figma_helper.dart';

class CustomUserAppbar extends StatelessWidget {
  const CustomUserAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final profileIcon = FigmaHelper.calculaTamanio(
      figmaDeviceWidth: 393,
      figmaDeviceHeight: 852,
      figmaElementWidth: 19.65,
      figmaElementHeight: 21.4,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    final logoIcon = FigmaHelper.calculaTamanio(
      figmaDeviceWidth: 393,
      figmaDeviceHeight: 852,
      figmaElementWidth: 66.87,
      figmaElementHeight: 18.31,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    final actionIcons = FigmaHelper.calculaTamanio(
      figmaDeviceWidth: 393,
      figmaDeviceHeight: 852,
      figmaElementWidth: 21.15,
      figmaElementHeight: 21.15,
      userDeviceWidth: size.width,
      userDeviceHeight: size.height,
    );

    return SafeArea(
      child: SizedBox(
        height: 56, // Altura estándar del appbar
        width: double.infinity,
        child: Stack(
          children: [
            // Botón de la izquierda
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/shared/person-rounded.svg',
                  semanticsLabel: 'Profile',
                  height: profileIcon['height'],
                  width: profileIcon['width'],
                ),
              ),
            ),
            // Ícono centrado (asset) en el centro de la pantalla
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/shared/Group.svg',
                semanticsLabel: 'Piramix Logo 2',
                height: logoIcon['height'],
                width: logoIcon['width'],
              ),
            ),
            // Botones de la derecha
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/shared/circle-search-loupe.svg',
                      semanticsLabel: 'Buscar',
                      height: actionIcons['height'],
                      width: actionIcons['width'],
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/shared/circle-bell.svg',
                      semanticsLabel: 'Notificaciones',
                      height: actionIcons['height'],
                      width: actionIcons['width'],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
