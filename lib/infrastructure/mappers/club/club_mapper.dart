import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';

class ClubMapper {
  static ClubMasJugadoEntity fromModel(ClubMasJugadoModel model) =>
      ClubMasJugadoEntity(id: model.id, nombre: model.nombre);
}
