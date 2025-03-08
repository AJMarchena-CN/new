class FigmaHelper {
  static const double baseWidth = 393; // Ancho del diseño en Figma
  static const double baseHeight = 852; // Alto del diseño en Figma

  /// 🔹 **Método para calcular el tamaño proporcional de cualquier elemento de Figma**
  static Map<String, double> calculaTamanio({
    required double figmaDeviceWidth,
    required double figmaDeviceHeight,
    required double figmaElementWidth,
    required double figmaElementHeight,
    required double userDeviceWidth,
    required double userDeviceHeight,
  }) {
    double scaleWidth = userDeviceWidth / figmaDeviceWidth;
    double scaleHeight = userDeviceHeight / figmaDeviceHeight;
    double scaleFactor = scaleWidth < scaleHeight ? scaleWidth : scaleHeight;

    return {
      "width": figmaElementWidth * scaleFactor,
      "height": figmaElementHeight * scaleFactor,
    };
  }
}
