import 'package:piramix/domain/entities/entities_barrel.dart';

class MunicipioEntity {
  final int id;
  final String nombre;
  final ProvinciaEntity provincia;

  MunicipioEntity({
    required this.id,
    required this.nombre,
    required this.provincia,
  });
}
