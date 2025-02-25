import 'package:piramix/infrastructure/models/models_barrel.dart';

class LoginResponseModel {
  final TokenModel token;
  final String id;
  final RolModel rol;
  final ProvinciaModel provincia;
  final MunicipioModel municipio;
  final String? fotoPerfil;
  final double plc;
  final int vecesBloqueoComunidad;
  final ProvinciaModel? provinciaTmp;

  LoginResponseModel({
    required this.token,
    required this.id,
    required this.rol,
    required this.provincia,
    required this.municipio,
    this.fotoPerfil,
    required this.plc,
    required this.vecesBloqueoComunidad,
    this.provinciaTmp,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
      token: TokenModel.fromJson(json),
      id: json['id'],
      rol: RolModel.fromJson(json['rol']),
      provincia: ProvinciaModel.fromJson(json['provincia']),
      municipio: MunicipioModel.fromJson(json['municipio']),
      fotoPerfil: json['fotoPerfil'],
      plc: (json['plc'] as num).toDouble(),
      vecesBloqueoComunidad: json['vecesBloqueoComunidad'],
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
      'fotoPerfil': fotoPerfil,
      'plc': plc,
      'vecesBloqueoComunidad': vecesBloqueoComunidad,
      'provinciaTmp': provinciaTmp?.toJson(),
    };
  }
}
