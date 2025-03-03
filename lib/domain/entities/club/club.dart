import 'package:piramix/domain/entities/entities_barrel.dart';

import 'package:isar/isar.dart';

part 'club.g.dart';

@collection
class ClubEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar

  final String id;
  final String nombre;
  final String fotoPerfil;
  final double? plc;
  final int vecesBloqueoComunidad;
  final int idClub;

  final IsarLink<TokenEntity> token = IsarLink<TokenEntity>();
  final IsarLink<RolEntity> rol = IsarLink<RolEntity>();
  final IsarLink<ProvinciaEntity> provincia = IsarLink<ProvinciaEntity>();
  final IsarLink<MunicipioEntity> municipio = IsarLink<MunicipioEntity>();
  final IsarLink<RolEntity> tipoClub = IsarLink<RolEntity>();

  ClubEntity({
    required this.id,
    required this.nombre,
    required this.fotoPerfil,
    this.plc,
    required this.vecesBloqueoComunidad,
    required this.idClub,
  });
}
