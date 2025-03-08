import 'package:piramix/infrastructure/models/club/club_models.dart';

abstract class ClubRepository {
  /// Realiza una petición para obtener los clubs en función de los filtros.
  /// Se espera un JSON con datos como fecha, favoritos, límites de latitud y longitud, etc.
  Future<ClubModel> getMapsClubs(Map<String, dynamic> filters);

  /// Realiza la petición para alternar el estado de favorito de un club.
  Future<void> clubToggleFavorite({required int id});

  /// Obtiene los detalles de un club a partir de su id.
  Future<ClubInterno> getClubById({required int id});
}
