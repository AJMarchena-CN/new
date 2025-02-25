import 'package:piramix/infrastructure/models/models_barrel.dart';

class UsuarioListModel extends BaseUserModel {
  UsuarioListModel({
    required super.id,
    required super.userName,
    required super.email,
    super.nombre,
    super.apellidos,
    super.phoneNumber,
    super.fechaNacimiento,
    super.fotoPerfil,
  });

  factory UsuarioListModel.fromJson(Map<String, dynamic> json) {
    return UsuarioListModel(
      id: json['id'],
      userName: json['userName'],
      email: json['email'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      phoneNumber: json['phoneNumber'],
      fechaNacimiento:
          json['fechaNacimiento'] != null
              ? DateTime.parse(json['fechaNacimiento'])
              : null,
      fotoPerfil: json['fotoPerfil'],
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
    };
  }
}
