import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';

class UserMapper {
  ///! Convierte un `LoginResponseModel` (modelo de inicio de sesión) en una `UserEntity`
  static UserEntity fromLoginResponse(LoginResponseModel model) => UserEntity(
    id: model.id,
    userName: "", // No viene en la respuesta del login
    email: "", // No viene en la respuesta del login
    fotoPerfil: model.fotoPerfil,
    token: TokenMapper.fromModel(model.token),
    rol: RolMapper.fromModel(model.rol),
    provincia: ProvinciaMapper.fromModel(model.provincia),
    municipio: MunicipioMapper.fromModel(model.municipio),
    plc: model.plc,
    vecesBloqueoComunidad: model.vecesBloqueoComunidad,
    provinciaTmp:
        model.provinciaTmp != null
            ? ProvinciaMapper.fromModel(model.provinciaTmp!)
            : null,
  );

  ///! Convierte un `UsuarioListModel` (modelo de lista de usuarios) en una `UserEntity`
  static UserEntity fromUsuarioList(UsuarioListModel model) => UserEntity(
    id: model.id,
    userName: model.userName,
    email: model.email,
    nombre: model.nombre,
    apellidos: model.apellidos,
    phoneNumber: model.phoneNumber,
    fechaNacimiento: model.fechaNacimiento,
    fotoPerfil: model.fotoPerfil,
  );

  ///! Convierte una respuesta de `GetUsuarioById` en una `UserEntity`
  static UserEntity fromUsuarioById(UsuarioByIdModel model) => UserEntity(
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
    clubMasJugado:
        model.clubMasJugado != null
            ? ClubMapper.fromModel(model.clubMasJugado!)
            : null,
  );

  ///! Convierte una respuesta de `GetUsuarioByUsername` en una `UserEntity`
  static UserEntity fromGetUsuarioByUsername(Map<String, dynamic> json) =>
      UserEntity(
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
}
