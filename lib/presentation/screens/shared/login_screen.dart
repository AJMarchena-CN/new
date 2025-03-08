import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:piramix/presentation/providers/shared/login_provider.dart';
import 'package:piramix/presentation/widgets/shared/shared_widget_barrel.dart';

class LoginScreen extends ConsumerWidget {
  static const name = 'login';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final size = MediaQuery.of(context).size;

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
            mainAxisSize: MainAxisSize.max,
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

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: theme.colorScheme.primary,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'O',
                      style: TextStyle(
                        color: theme.colorScheme.primary,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: theme.colorScheme.primary,
                      thickness: 2,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MediaSvgButton(
                    svgUrl: 'assets/icons/shared/google_sign_icon.svg',
                    semanticsLabel: 'google_icon',
                    onPressed: () {},
                    size: size.width * 0.15,
                  ),
                  MediaSvgButton(
                    svgUrl: 'assets/icons/shared/instagram_sign_icon.svg',
                    semanticsLabel: 'instagram_icon',
                    onPressed: () {},
                    size: size.width * 0.15,
                  ),
                  MediaSvgButton(
                    svgUrl: 'assets/icons/shared/facebook_sign_icon.svg',
                    semanticsLabel: 'facebook_icon',
                    onPressed: () {},
                    size: size.width * 0.15,
                  ),
                  MediaSvgButton(
                    svgUrl: 'assets/icons/shared/apple_sign_icon.svg',
                    semanticsLabel: 'apple_icon',
                    onPressed: () {},
                    size: size.width * 0.15,
                  ),
                ],
              ),
              Spacer(),

              if (loginState is AsyncError)
                CustomFlushbar(
                  type: MessageType.error,
                  title: 'Error de autenticación',
                  message: loginState.error.toString(),
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
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2.0, // Ancho aumentado
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.0, // Ancho aumentado
                ),
              ),
            ),
            style: TextStyle(fontSize: textScaler.scale(20)),
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
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 2.0, // Ancho aumentado
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 2.0, // Ancho aumentado
                ),
              ),
            ),
            obscureText: true,
            style: TextStyle(fontSize: textScaler.scale(20)),
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
