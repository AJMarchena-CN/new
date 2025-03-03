import 'package:piramix/infrastructure/models/models_barrel.dart';

class LoginResponse {
  final TokenModel token;
  final String id;
  final RolModel rol;
  final ProvinciaModel provincia;
  final MunicipioModel municipio;
  final String? fotoPerfil;
  final double? plc;
  final int vecesBloqueoComunidad;
  final int? idClub;
  final TipoClubModel? tipoClub;
  final ProvinciaModel? provinciaTmp;

  LoginResponse({
    required this.token,
    required this.id,
    required this.rol,
    required this.provincia,
    required this.municipio,
    this.fotoPerfil,
    this.plc,
    required this.vecesBloqueoComunidad,
    this.idClub,
    this.tipoClub,
    this.provinciaTmp,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: TokenModel.fromJson(json['token']),
      id: json['id'] ?? '',
      rol: RolModel.fromJson(json['rol']),
      provincia: ProvinciaModel.fromJson(json['provincia']),
      municipio: MunicipioModel.fromJson(json['municipio']),
      fotoPerfil: json['fotoPerfil'],
      plc:
          (json['plc'] != null)
              ? double.tryParse(json['plc'].toString())
              : null,
      vecesBloqueoComunidad: json['vecesBloqueoComunidad'] ?? 0,
      idClub: json['idClub'],
      tipoClub:
          json['tipoClub'] != null
              ? TipoClubModel.fromJson(json['tipoClub'])
              : null,
      provinciaTmp:
          json['provinciaTmp'] != null
              ? ProvinciaModel.fromJson(json['provinciaTmp'])
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token.toJson(),
      'id': id,
      'rol': rol.toJson(),
      'provincia': provincia.toJson(),
      'municipio': municipio.toJson(),
      if (fotoPerfil != null) 'fotoPerfil': fotoPerfil,
      if (plc != null) 'plc': plc,
      'vecesBloqueoComunidad': vecesBloqueoComunidad,
      if (idClub != null) 'idClub': idClub,
      if (tipoClub != null) 'tipoClub': tipoClub?.toJson(),
      if (provinciaTmp != null) 'provinciaTmp': provinciaTmp?.toJson(),
    };
  }
}

class TipoClubModel {
  final int id;
  final String nombre;

  TipoClubModel({required this.id, required this.nombre});

  factory TipoClubModel.fromJson(Map<String, dynamic> json) {
    return TipoClubModel(id: json['id'] ?? 0, nombre: json['nombre'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nombre': nombre};
  }
}
