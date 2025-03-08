import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:animate_do/animate_do.dart';

enum MessageType { error, success, info }

class CustomFlushbar extends StatefulWidget {
  final MessageType type;
  final String title;
  final String message;
  final Duration duration;

  const CustomFlushbar({
    super.key,
    required this.type,
    required this.title,
    required this.message,
    this.duration = const Duration(seconds: 3),
  });

  @override
  CustomFlushbarState createState() => CustomFlushbarState();
}

class CustomFlushbarState extends State<CustomFlushbar> {
  // Variable estática para almacenar el flushbar activo.
  static Flushbar? _activeFlushbar;

  @override
  void initState() {
    super.initState();
    // Se programa el despliegue del Flushbar después de renderizar el frame.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showFlushbar();
    });
  }

  void _showFlushbar() async {
    // Si ya hay un flushbar activo, lo descartamos para evitar superposición.
    if (_activeFlushbar != null) {
      await _activeFlushbar!.dismiss();
      _activeFlushbar = null;
    }

    // Definir color e ícono base según el tipo de mensaje.
    Color backgroundColor;
    Icon baseIcon;
    switch (widget.type) {
      case MessageType.error:
        backgroundColor = Colors.transparent;
        baseIcon = const Icon(Icons.error_outline, color: Colors.red);
        break;
      case MessageType.success:
        backgroundColor = Colors.transparent;
        baseIcon = const Icon(Icons.check_circle_outline, color: Colors.green);
        break;
      case MessageType.info:
        backgroundColor = Colors.transparent;
        baseIcon = const Icon(Icons.info_outline, color: Colors.blue);
        break;
    }

    // El efecto de Flash en el ícono se retrasa 500 ms para esperar a que la Flushbar esté desplegada.
    final animatedIcon = Flash(
      delay: const Duration(milliseconds: 500),
      duration: const Duration(milliseconds: 500),
      child: baseIcon,
    );

    // Limpiar el mensaje para quitar "Exception:" si aparece.
    final cleanedMessage = widget.message.replaceAll('Exception:', '').trim();

    // Animar el mensaje con un efecto ShakeX (o puedes usar otro).
    final animatedMessage = ShakeX(
      duration: const Duration(milliseconds: 500),
      from: 10,
      child: Text(
        cleanedMessage,
        style: const TextStyle(
          fontFamily: 'Roboto',
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );

    // Título con fuente Roboto y tamaño mayor.
    final titleText = Text(
      widget.title,
      style: const TextStyle(
        fontFamily: 'Roboto',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );

    // Crear el Flushbar y especificar la duración de su animación.
    final flush = Flushbar(
      animationDuration: const Duration(milliseconds: 500),
      titleText: titleText,
      messageText: animatedMessage,
      icon: animatedIcon,
      duration: widget.duration,
      backgroundColor: backgroundColor,
      margin: const EdgeInsets.all(8.0),
      borderRadius: BorderRadius.circular(8.0),
      borderColor: Colors.white,
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
    );

    // Asignarlo como flushbar activo y mostrarlo.
    _activeFlushbar = flush;
    if (mounted) {
      flush.show(context).then((_) {
        _activeFlushbar = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Este widget no renderiza contenido; su función es mostrar el Flushbar.
    return const SizedBox.shrink();
  }
}
