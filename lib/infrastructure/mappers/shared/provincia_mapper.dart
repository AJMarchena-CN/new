import 'package:piramix/infrastructure/models/models_barrel.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';

class ProvinciaMapper {
  static ProvinciaEntity fromModel(ProvinciaModel model) => ProvinciaEntity(
    id: model.id,
    nombre: model.nombre,
    abreviatura: model.abreviatura,
  );
}
