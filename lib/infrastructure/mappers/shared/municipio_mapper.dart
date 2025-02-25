import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';

class MunicipioMapper {
  static MunicipioEntity fromModel(MunicipioModel model) {
    final municipio = MunicipioEntity(id: model.id, nombre: model.nombre);

    municipio.provincia.value = ProvinciaMapper.fromModel(model.provincia);
    return municipio;
  }
}
