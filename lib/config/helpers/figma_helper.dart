class FigmaHelper {
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

    return {
      "width": figmaElementWidth * scaleWidth,
      "height": figmaElementHeight * scaleHeight,
    };
  }
}
