import 'package:isar/isar.dart';

part 'club_mas_jugado.g.dart';

@collection
class ClubMasJugadoEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar
  final int id;
  final String nombre;

  ClubMasJugadoEntity({required this.id, required this.nombre});
}
