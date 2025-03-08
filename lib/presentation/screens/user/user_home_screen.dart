import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piramix/config/helpers/location_helper.dart';
import 'package:piramix/presentation/views/user/example_view.dart';
import 'package:piramix/presentation/widgets/user/user_widgets_barrel.dart';

class UserHomeScreen extends ConsumerStatefulWidget {
  static const name = "home-screen";
  final int pageIndex;
  final viewRoutes = const <Widget>[ExampleView()];

  const UserHomeScreen({Key? key, required this.pageIndex}) : super(key: key);

  @override
  _UserHomeScreenState createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends ConsumerState<UserHomeScreen> {
  @override
  void initState() {
    super.initState();
    // Se comprueba la geolocalización al cargar la pantalla.
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool allowed = await LocationHelper.checkAndRequestLocationPermission();
      if (!allowed) {
        // Si no tiene permiso, se muestra un diálogo para solicitarlo.
        if (mounted) {
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  title: const Text("Permiso de Ubicación"),
                  content: const Text(
                    "Para una mejor experiencia, por favor habilite la geolocalización en la configuración de su dispositivo.",
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Aceptar"),
                    ),
                  ],
                ),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const CustomUserAppbar()),
      body: Center(
        child: IndexedStack(
          index: widget.pageIndex,
          children: widget.viewRoutes,
        ),
      ),
      bottomNavigationBar: CustomNavbar(currentIndex: widget.pageIndex),
    );
  }
}
