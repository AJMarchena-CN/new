import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MediaSvgButton extends StatelessWidget {
  final String svgUrl;
  final String semanticsLabel;
  final VoidCallback onPressed;
  final double size;
  final Color? color;

  const MediaSvgButton({
    super.key,
    required this.svgUrl,
    required this.semanticsLabel,
    required this.onPressed,
    required this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        svgUrl,
        semanticsLabel: semanticsLabel,
        width: size,
        height: size,
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
      ),
      onPressed: onPressed,
    );
  }
}
