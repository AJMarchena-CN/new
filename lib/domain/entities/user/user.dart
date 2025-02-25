import 'package:piramix/domain/entities/entities_barrel.dart';

import 'package:isar/isar.dart';

part 'user_entity.g.dart';

@collection
class UserEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar
  final String id;
  final String userName;
  final String email;
  final String? nombre;
  final String? apellidos;
  final String? phoneNumber;
  final DateTime? fechaNacimiento;
  final String? fotoPerfil;
  final IsarLink<TokenEntity> token = IsarLink<TokenEntity>();
  final IsarLink<RolEntity> rol = IsarLink<RolEntity>();
  final IsarLink<ProvinciaEntity> provincia = IsarLink<ProvinciaEntity>();
  final IsarLink<MunicipioEntity> municipio = IsarLink<MunicipioEntity>();
  final double? plc;
  final int? vecesBloqueoComunidad;
  final int? numAmigos;
  final double? mediaValoraciones;
  final int? partidosJugados;
  final int? partidosGanados;
  final int? partidosPerdidos;
  final bool? esAmigo;
  final String? solicitudEstado;
  final IsarLink<ProvinciaEntity> provinciaTmp = IsarLink<ProvinciaEntity>();
  final IsarLink<ClubMasJugadoEntity> clubMasJugado =
      IsarLink<ClubMasJugadoEntity>();

  UserEntity({
    required this.id,
    required this.userName,
    required this.email,
    this.nombre,
    this.apellidos,
    this.phoneNumber,
    this.fechaNacimiento,
    this.fotoPerfil,
    this.plc,
    this.vecesBloqueoComunidad,
    this.numAmigos,
    this.mediaValoraciones,
    this.partidosJugados,
    this.partidosGanados,
    this.partidosPerdidos,
    this.esAmigo,
    this.solicitudEstado,
  });
}
