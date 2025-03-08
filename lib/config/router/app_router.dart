import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:piramix/presentation/screens/screens.dart';

final FlutterSecureStorage _storage = const FlutterSecureStorage();

Future<String?> _redirectLogic(
  BuildContext context,
  GoRouterState state,
) async {
  final String? userType = await _storage.read(key: 'user_type');
  final String? token = await _storage.read(key: 'token');

  if (token == null) {
    // Si no hay token, redirigir a /init
    return '/init';
  }

  if (userType == 'user' && state.uri.toString().startsWith('/club')) {
    // Si el usuario no tiene permiso para acceder a rutas de 'club'
    return '/user/home/0';
  } else if (userType == 'club' && state.uri.toString().startsWith('/user')) {
    // Si el club no tiene permiso para acceder a rutas de 'user'
    return '/club/home/0';
  }

  return null; // Si todo está bien, no redirigir
}

final appRouter = GoRouter(
  initialLocation: '/init',
  redirect: _redirectLogic,
  routes: [
    // 🔹 Ruta común para todos
    GoRoute(
      path: '/init',
      name: InitScreen.name,
      builder: (context, state) => InitScreen(),
    ),
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/map',
      name: GoogleMapsScreen.name,
      builder: (context, state) => GoogleMapsScreen(),
    ),
    // 🔹 Rutas exclusivas para `user`
    GoRoute(
      path: '/user/home/:page',
      name: UserHomeScreen.name,
      builder: (context, state) {
        final int pageIndex =
            int.tryParse(state.pathParameters['page'] ?? '0') ?? 0;
        return UserHomeScreen(pageIndex: pageIndex);
      },
    ),
    /*     GoRoute(
      path: '/register/:step',
      name: 'register',
      builder: (context, state) {
        final int step = int.tryParse(state.pathParameters['step'] ?? '1') ?? 1;
        return RegisterScreen(step: step);
      },
    ), */

    // 🔹 Rutas exclusivas para `club`
    /*   GoRoute(
      path: '/club/home/:page',
      name: 'clubHome',
      builder: (context, state) {
        final int pageIndex = int.tryParse(state.pathParameters['page'] ?? '0') ?? 0;
        return ClubHomeScreen(pageIndex: pageIndex);
      },
    ), */
  ],
);
