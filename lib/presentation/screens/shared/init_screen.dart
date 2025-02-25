import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InitScreen extends StatelessWidget {
  static const name = 'init';

  const InitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final textScaler = MediaQuery.textScalerOf(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              color: const Color.fromARGB(255, 172, 200, 17),
              'assets/images/shared/sign_ball_top_left_icon.png',
            ),
          ),
          const Spacer(),
          Text(
            'Bienvenido a',
            style: TextStyle(
              fontSize: textScaler.scale(42),
              fontFamily: 'Roboto',
              color: theme.colorScheme.secondary,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Piramix',
            style: TextStyle(
              fontSize: textScaler.scale(70),
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
              color: theme.colorScheme.secondary,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/shared/sign_logo.png',
            width: size.width * 1,
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              color: const Color.fromARGB(255, 172, 200, 17),
              'assets/images/shared/sign_ball_middle_right_icon.png',
            ),
          ),
          const Spacer(),
          SizedBox(
            width: size.width * 0.75,
            child: ElevatedButton(
              onPressed: () {
                //Usa el método `GoRouter.of(context).go('/login');` para navegar a la pantalla de inicio de sesión
                context.go('/login');
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                elevation: 8.0,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                alignment: Alignment.center,
              ),

              child: Text(
                'Iniciar sesión',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.secondary,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.75,
            child: ElevatedButton(
              onPressed: () {},

              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.surface,
                elevation: 8.0,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 3.0,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
                alignment: Alignment.center,
              ),

              child: Text(
                'Registrarse',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),

          const Spacer(),
        ],
      ),
    );
  }
}
