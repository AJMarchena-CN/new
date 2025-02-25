class ClubBaseModel {
  final int id;
  final String nombre;

  ClubBaseModel({required this.id, required this.nombre});

  factory ClubBaseModel.fromJson(Map<String, dynamic> json) {
    return ClubBaseModel(id: json['id'], nombre: json['nombre']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'nombre': nombre};
}
