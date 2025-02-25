import 'package:piramix/infrastructure/models/models_barrel.dart';

class UsuarioByIdModel extends BaseUserModel {
  final String? banner;
  final bool? esAmigo;
  final String? solicitudEstado;
  final double? plc;
  final double? mediaValoraciones;
  final int? partidosJugados;
  final int? partidosGanados;
  final int? partidosPerdidos;
  final int? numAmigos;
  final ClubMasJugadoModel? clubMasJugado;

  UsuarioByIdModel({
    required super.id,
    required super.userName,
    required super.email,
    super.nombre,
    super.apellidos,
    super.phoneNumber,
    super.fechaNacimiento,
    super.fotoPerfil,
    this.banner,
    this.esAmigo,
    this.solicitudEstado,
    this.plc,
    this.mediaValoraciones,
    this.partidosJugados,
    this.partidosGanados,
    this.partidosPerdidos,
    this.numAmigos,
    this.clubMasJugado,
  });

  factory UsuarioByIdModel.fromJson(Map<String, dynamic> json) {
    return UsuarioByIdModel(
      id: json['id'],
      userName: json['userName'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      fechaNacimiento:
          json['fecha_nacimiento'] != null
              ? DateTime.tryParse(json['fecha_nacimiento'])
              : null,
      fotoPerfil: json['fotoPerfil'],
      banner: json['banner'],
      esAmigo: json['esAmigo'],
      solicitudEstado: json['solicitudEstado'],
      plc: (json['plc'] as num?)?.toDouble(),
      mediaValoraciones: (json['mediaValoraciones'] as num?)?.toDouble(),
      partidosJugados: json['partidosJugados'],
      partidosGanados: json['partidosGanados'],
      partidosPerdidos: json['partidosPerdidos'],
      numAmigos: json['numAmigos'],
      clubMasJugado:
          json['clubMasJugado'] != null
              ? ClubMasJugadoModel.fromJson(json['clubMasJugado'])
              : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'email': email,
      'nombre': nombre,
      'apellidos': apellidos,
      'phoneNumber': phoneNumber,
      'fechaNacimiento': fechaNacimiento?.toIso8601String(),
      'fotoPerfil': fotoPerfil,
      'banner': banner,
      'esAmigo': esAmigo,
      'solicitudEstado': solicitudEstado,
      'plc': plc,
      'mediaValoraciones': mediaValoraciones,
      'partidosJugados': partidosJugados,
      'partidosGanados': partidosGanados,
      'partidosPerdidos': partidosPerdidos,
      'numAmigos': numAmigos,
      'clubMasJugado': clubMasJugado?.toJson(),
    };
  }
}
