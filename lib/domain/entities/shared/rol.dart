import 'package:isar/isar.dart';

part 'rol.g.dart';

@collection
class RolEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar
  late int id;
  late String nombre;

  RolEntity({required this.id, required this.nombre});
}
