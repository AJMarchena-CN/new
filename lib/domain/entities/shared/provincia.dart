import 'package:isar/isar.dart';

part 'provincia.g.dart';

@collection
class ProvinciaEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar
  late int id;
  late String nombre;
  late String abreviatura;

  ProvinciaEntity({
    required this.id,
    required this.nombre,
    required this.abreviatura,
  });
}
