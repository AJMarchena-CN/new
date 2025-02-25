import 'package:intl/intl.dart';

class HumanFormats {
  static String engNumber(double number, [int decimals = 0]) {
    final formatterNumner = NumberFormat.currency(
      decimalDigits: decimals,
      symbol: '',
      locale: 'en',
    ).format(number);
    return formatterNumner;
  }

  static String espNumber(double number, [int decimals = 0]) {
    final formatterNumner = NumberFormat.currency(
      decimalDigits: decimals,
      symbol: '',
      locale: 'es',
    ).format(number);
    return formatterNumner;
  }
}
