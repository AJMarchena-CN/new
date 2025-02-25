abstract class BaseUserModel {
  final String id;
  final String userName;
  final String email;
  final String? nombre;
  final String? apellidos;
  final String? phoneNumber;
  final DateTime? fechaNacimiento;
  final String? fotoPerfil;

  const BaseUserModel({
    required this.id,
    required this.userName,
    required this.email,
    this.nombre,
    this.apellidos,
    this.phoneNumber,
    this.fechaNacimiento,
    this.fotoPerfil,
  });

  Map<String, dynamic> toJson();
}
