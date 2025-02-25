class ProvinciaModel {
  final int id;
  final String nombre;
  final String abreviatura;

  ProvinciaModel({
    required this.id,
    required this.nombre,
    required this.abreviatura,
  });

  factory ProvinciaModel.fromJson(Map<String, dynamic> json) {
    return ProvinciaModel(
      id: json['id'],
      nombre: json['nombre'],
      abreviatura: json['abreviatura'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'nombre': nombre,
    'abreviatura': abreviatura,
  };
}
