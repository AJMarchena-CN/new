import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theMovieDbKey =
      dotenv.env['GOOGLE_API_KEY'] ?? 'No hay api key';
  static String theMovieDbBaseUrl =
      dotenv.env['API_BASE_URL'] ?? 'No hay api base url';
}
