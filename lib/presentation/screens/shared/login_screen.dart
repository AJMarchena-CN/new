import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider para manejar la autenticación

class LoginScreen extends ConsumerWidget {
  static const name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final textScaler = MediaQuery.textScalerOf(context);
    /* final authService = ref.read(authProvider); */

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Image.asset(
              'assets/images/shared/sign_logo.png',
              width: size.width * 0.7,
            ),
            Spacer(),

            /// Formulario de usuario y contraseña
            _LoginForm(),

            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              spacing: 10,
              children: [
                Divider(color: Colors.white),
                Text(
                  'O',
                  style: TextStyle(
                    fontSize: textScaler.scale(42),
                    fontFamily: 'Roboto',
                    color: theme.colorScheme.secondary,
                    decoration: TextDecoration.none,
                  ),
                ),
                Divider(color: Colors.white),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Formulario de usuario y contraseña
class _LoginForm extends ConsumerStatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<_LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      print(
        "Usuario: ${_userController.text}, Contraseña: ${_passwordController.text}",
      );
      // Aquí podrías llamar a un provider para manejar el login
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _userController,
            decoration: const InputDecoration(
              labelText: 'Usuario',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese su usuario';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'Contraseña',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese su contraseña';
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _login,
            child: const Text('Iniciar sesión'),
          ),
        ],
      ),
    );
  }
}
