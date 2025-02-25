import 'package:piramix/domain/entities/entities_barrel.dart';

import 'package:isar/isar.dart';

part 'club_mas_jugado.g.dart';

@collection
class ClubMasJugadoEntity extends ClubBaseEntity {
  Id? isarId = Isar.autoIncrement; // ID autoincremental para Isar

  ClubMasJugadoEntity({required super.id, required super.nombre});
}
