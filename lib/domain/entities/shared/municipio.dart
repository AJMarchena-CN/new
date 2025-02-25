import 'package:piramix/domain/entities/entities_barrel.dart';

import 'package:isar/isar.dart';

part 'municipio.g.dart';

@collection
class MunicipioEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar
  late int id;
  late String nombre;
  final IsarLink<ProvinciaEntity> provincia = IsarLink<ProvinciaEntity>();

  MunicipioEntity({required this.id, required this.nombre});
}
