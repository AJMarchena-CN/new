import 'package:piramix/infrastructure/models/models_barrel.dart';

class MunicipioModel {
  final int id;
  final String nombre;
  final ProvinciaModel provincia;

  MunicipioModel({
    required this.id,
    required this.nombre,
    required this.provincia,
  });

  factory MunicipioModel.fromJson(Map<String, dynamic> json) {
    return MunicipioModel(
      id: json['id'],
      nombre: json['nombre'],
      provincia: ProvinciaModel.fromJson(json['provincia']),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'provincia': provincia.toJson(),
  };
}
