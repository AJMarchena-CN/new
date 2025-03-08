import 'package:piramix/infrastructure/models/models_barrel.dart';

class LoginResponse {
  final TokenModel token;
  final String id;
  final RolModel rol;
  final ProvinciaModel provincia;
  final MunicipioModel municipio;
  final String fotoPerfil;
  final double plc;
  final int vecesBloqueoComunidad;
  final int? idClub;
  final TipoClubModel? tipoClub;
  final ProvinciaModel provinciaTmp;
  final String userName;
  final String email;
  final String nombre;
  final String apellidos;
  final String phoneNumber;
  final DateTime? fechaNacimiento;

  LoginResponse({
    required this.token,
    required this.id,
    required this.rol,
    required this.provincia,
    required this.municipio,
    required this.fotoPerfil,
    required this.plc,
    required this.vecesBloqueoComunidad,
    this.idClub,
    this.tipoClub,
    required this.provinciaTmp,
    required this.userName,
    required this.email,
    required this.nombre,
    required this.apellidos,
    required this.phoneNumber,
    this.fechaNacimiento,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: TokenModel.fromJson(json['token'] as Map<String, dynamic>),
      id: json['id'] ?? '',
      rol: RolModel.fromJson(json['rol'] as Map<String, dynamic>),
      provincia: ProvinciaModel.fromJson(
        json['provincia'] as Map<String, dynamic>,
      ),
      municipio: MunicipioModel.fromJson(
        json['municipio'] as Map<String, dynamic>,
      ),
      // Si 'fotoPerfil' viene nulo, se intenta obtener la clave 'foto'; de lo contrario se asigna cadena vacía.
      fotoPerfil: (json['fotoPerfil'] ?? json['foto'] ?? '') as String,
      plc:
          json['plc'] != null
              ? double.tryParse(json['plc'].toString()) ?? 0.0
              : 0.0,
      vecesBloqueoComunidad: json['vecesBloqueoComunidad'] ?? 0,
      idClub: json['idClub'],
      tipoClub:
          json['tipoClub'] != null
              ? TipoClubModel.fromJson(json['tipoClub'] as Map<String, dynamic>)
              : null,
      // Si provinciaTmp es nula, usamos la provincia principal
      provinciaTmp:
          json['provinciaTmp'] != null
              ? ProvinciaModel.fromJson(
                json['provinciaTmp'] as Map<String, dynamic>,
              )
              : ProvinciaModel.fromJson(
                json['provincia'] as Map<String, dynamic>,
              ),
      userName: json['userName'] ?? '',
      email: json['email'] ?? '',
      nombre: json['nombre'] ?? '',
      apellidos: json['apellidos'] ?? '',
      phoneNumber: json['phoneNumber'] ?? '',
      fechaNacimiento:
          json['fechaNacimiento'] != null
              ? DateTime.tryParse(json['fechaNacimiento'])
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
      if (idClub != null) 'idClub': idClub,
      if (tipoClub != null) 'tipoClub': tipoClub?.toJson(),
      'provinciaTmp': provinciaTmp.toJson(),
      'userName': userName,
      'email': email,
      'nombre': nombre,
      'apellidos': apellidos,
      'phoneNumber': phoneNumber,
      if (fechaNacimiento != null)
        'fechaNacimiento': fechaNacimiento!.toIso8601String(),
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
