import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';

class UserMapper {
  /// Convierte un `LoginResponseModel` (modelo de inicio de sesión) en una `UserEntity`
  static UserEntity fromLoginResponse(LoginResponse model) {
    final user = UserEntity(
      id: model.id,
      userName: "",
      email: "",
      fotoPerfil: model.fotoPerfil,
      plc: model.plc,
      vecesBloqueoComunidad: model.vecesBloqueoComunidad,
    );
    //* Para establecer el valor de un IsarLink, se utiliza isarLink.value = entidad
    user.token.value =
        model.token != null ? TokenMapper.fromModel(model.token) : null;
    user.rol.value = model.rol != null ? RolMapper.fromModel(model.rol) : null;
    //* Si el valor relacionado puede ser nulo, se maneja adecuadamente con un operador ternario.
    user.provincia.value =
        model.provincia != null
            ? ProvinciaMapper.fromModel(model.provincia)
            : null;
    user.municipio.value =
        model.municipio != null
            ? MunicipioMapper.fromModel(model.municipio)
            : null;
    user.provinciaTmp.value =
        model.provinciaTmp != null
            ? ProvinciaMapper.fromModel(model.provinciaTmp!)
            : null;

    return user;
  }

  /// Convierte un `UsuarioListModel` (modelo de lista de usuarios) en una `UserEntity`
  static UserEntity fromUsuarioList(UsuarioListModel model) {
    final user = UserEntity(
      id: model.id,
      userName: model.userName,
      email: model.email,
      nombre: model.nombre,
      apellidos: model.apellidos,
      phoneNumber: model.phoneNumber,
      fechaNacimiento: model.fechaNacimiento,
      fotoPerfil: model.fotoPerfil,
    );

    return user;
  }

  /// Convierte una respuesta de `GetUsuarioById` en una `UserEntity`
  static UserEntity fromUsuarioById(UsuarioByIdModel model) {
    final user = UserEntity(
      id: model.id,
      userName: model.userName,
      email: model.email,
      nombre: model.nombre,
      apellidos: model.apellidos,
      phoneNumber: model.phoneNumber,
      fechaNacimiento: model.fechaNacimiento,
      fotoPerfil: model.fotoPerfil,
      esAmigo: model.esAmigo,
      solicitudEstado: model.solicitudEstado,
      plc: model.plc,
      mediaValoraciones: model.mediaValoraciones,
      partidosJugados: model.partidosJugados,
      partidosGanados: model.partidosGanados,
      partidosPerdidos: model.partidosPerdidos,
      numAmigos: model.numAmigos,
    );

    if (model.clubMasJugado != null) {
      final clubMasJugadoEntity = ClubMasJugadoEntity(
        id: model.clubMasJugado!.id,
        nombre: model.clubMasJugado!.nombre,
      );
      user.clubMasJugado.value = clubMasJugadoEntity;
    }
    return user;
  }

  /// Convierte una respuesta de `GetUsuarioByUsername` en una `UserEntity`
  static UserEntity fromGetUsuarioByUsername(Map<String, dynamic> json) {
    final user = UserEntity(
      id: json['id'],
      userName: json['userName'],
      email: json['email'],
      nombre: json['nombre'],
      apellidos: json['apellidos'],
      phoneNumber: json['phoneNumber'],
      fechaNacimiento:
          json['fechaNacimiento'] != null
              ? DateTime.tryParse(json['fechaNacimiento'])
              : null,
      fotoPerfil: json['foto'],
    );

    return user;
  }
}
