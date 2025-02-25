import 'package:piramix/domain/entities/entities_barrel.dart';

class UserEntity {
  final String id;
  final String userName;
  final String email;
  final String? nombre;
  final String? apellidos;
  final String? phoneNumber;
  final DateTime? fechaNacimiento;
  final String? fotoPerfil;
  final TokenEntity? token;
  final RolEntity? rol;
  final ProvinciaEntity? provincia;
  final MunicipioEntity? municipio;
  final double? plc;
  final int? vecesBloqueoComunidad;
  final int? numAmigos;
  final double? mediaValoraciones;
  final int? partidosJugados;
  final int? partidosGanados;
  final int? partidosPerdidos;
  final bool? esAmigo;
  final String? solicitudEstado;
  final ProvinciaEntity? provinciaTmp;
  final ClubMasJugadoEntity? clubMasJugado;

  UserEntity({
    required this.id,
    required this.userName,
    required this.email,
    this.nombre,
    this.apellidos,
    this.phoneNumber,
    this.fechaNacimiento,
    this.fotoPerfil,
    this.token,
    this.rol,
    this.provincia,
    this.municipio,
    this.plc,
    this.vecesBloqueoComunidad,
    this.numAmigos,
    this.mediaValoraciones,
    this.partidosJugados,
    this.partidosGanados,
    this.partidosPerdidos,
    this.esAmigo,
    this.solicitudEstado,
    this.provinciaTmp,
    this.clubMasJugado,
  });
}
