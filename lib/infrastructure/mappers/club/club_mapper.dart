import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';
import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';

class ClubMapper {
  static ClubMasJugadoEntity fromModel(ClubMasJugadoModel model) =>
      ClubMasJugadoEntity(id: model.id, nombre: model.nombre);

  /// Convierte un `LoginResponse` en un `ClubEntity` para Isar
  static ClubEntity fromLoginResponse(LoginResponse model) {
    final club = ClubEntity(
      id: model.id,
      nombre: "", // Si en la respuesta viene, agrégalo aquí
      fotoPerfil: model.fotoPerfil ?? "",
      plc: model.plc,
      vecesBloqueoComunidad: model.vecesBloqueoComunidad,
      idClub: model.idClub ?? 0,
    );

    //* Asignación de relaciones (IsarLink)
    club.token.value = TokenMapper.fromModel(model.token);
    club.rol.value = RolMapper.fromModel(model.rol);
    club.provincia.value = ProvinciaMapper.fromModel(model.provincia);
    club.municipio.value = MunicipioMapper.fromModel(model.municipio);

    if (model.tipoClub != null) {
      club.tipoClub.value = RolEntity(
        id: model.tipoClub!.id,
        nombre: model.tipoClub!.nombre,
      );
    }

    return club;
  }
}
