import 'package:piramix/infrastructure/models/models_barrel.dart';

class ClubMasJugadoModel extends ClubBaseModel {
  ClubMasJugadoModel({required super.id, required super.nombre});

  factory ClubMasJugadoModel.fromJson(Map<String, dynamic> json) {
    return ClubMasJugadoModel(id: json['id'], nombre: json['nombre']);
  }

  @override
  Map<String, dynamic> toJson() => super.toJson();
}
