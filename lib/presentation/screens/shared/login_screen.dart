import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:piramix/presentation/providers/shared/login_provider.dart';

class LoginScreen extends ConsumerWidget {
  static const name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;
    final textScaler = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed:
              () => context.go('/init'), // ⬅️ Usamos goRouter para navegar
          icon: Icon(Icons.arrow_back_ios, color: colorScheme.primary),
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
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

              const Spacer(),

              if (loginState is AsyncError)
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Error: ${loginState.error}",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: textScaler.scale(16),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 🔹 Formulario de usuario y contraseña
class _LoginForm extends ConsumerStatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends ConsumerState<_LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    if (_formKey.currentState!.validate()) {
      final notifier = ref.read(loginProvider.notifier);

      await notifier.logIn(
        userName: _userController.text,
        password: _passwordController.text,
      );

      // ⬅️ Redirigir según el tipo de usuario después de iniciar sesión
      final loggedUser = ref.read(loginProvider).value;
      if (loggedUser != null) {
        final isClub = loggedUser.idClub != null;
        if (context.mounted) {
          context.go(isClub ? '/club/home/0' : '/user/home/0');
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginProvider);
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final textScaler = MediaQuery.textScalerOf(context);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _userController,
            decoration: InputDecoration(
              labelText: 'Usuario',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            style: TextStyle(fontSize: textScaler.scale(16)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese su usuario';
              }
              return null;
            },
          ),
          SizedBox(height: size.height * 0.02),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Contraseña',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            obscureText: true,
            style: TextStyle(fontSize: textScaler.scale(16)),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese su contraseña';
              }
              return null;
            },
          ),
          SizedBox(height: size.height * 0.02),
          SizedBox(
            width: size.width * 0.75,
            child: ElevatedButton(
              onPressed: loginState is AsyncLoading ? null : _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
              ),
              child:
                  loginState is AsyncLoading
                      ? CircularProgressIndicator(color: Colors.white)
                      : Text(
                        'Iniciar sesión',
                        style: TextStyle(
                          fontSize: textScaler.scale(18),
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onPrimary,
                        ),
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
