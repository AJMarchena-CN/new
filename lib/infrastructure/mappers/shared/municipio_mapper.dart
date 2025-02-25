import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';

class MunicipioMapper {
  static MunicipioEntity fromModel(MunicipioModel model) => MunicipioEntity(
    id: model.id,
    nombre: model.nombre,
    provincia: ProvinciaMapper.fromModel(model.provincia),
  );
}
