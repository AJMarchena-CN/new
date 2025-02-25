import 'package:piramix/infrastructure/models/models_barrel.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';

class RolMapper {
  static RolEntity fromModel(RolModel model) =>
      RolEntity(id: model.id, nombre: model.nombre);
}
