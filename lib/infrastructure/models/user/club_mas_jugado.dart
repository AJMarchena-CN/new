class ClubMasJugadoModel {
  final int id;
  final String nombre;

  ClubMasJugadoModel({required this.id, required this.nombre});

  factory ClubMasJugadoModel.fromJson(Map<String, dynamic> json) {
    return ClubMasJugadoModel(id: json['id'], nombre: json['nombre']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'nombre': nombre};
  }
}
