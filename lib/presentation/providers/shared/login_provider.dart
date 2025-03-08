import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/domain/repositories/shared/shared_repository.dart';
import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';
import 'package:piramix/infrastructure/models/models_barrel.dart';
import 'package:piramix/presentation/providers/shared/shared_repository_provider.dart';

final loginProvider =
    StateNotifierProvider<LoginNotifier, AsyncValue<LoginResponse?>>((ref) {
      final repository = ref.watch(sharedRepositoryProvider);
      return LoginNotifier(repository: repository);
    });

class LoginNotifier extends StateNotifier<AsyncValue<LoginResponse?>> {
  final SharedRepository repository;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  bool isLoading = false;

  LoginNotifier({required this.repository})
    : super(const AsyncValue.data(null));

  Future<void> logIn({
    required String userName,
    required String password,
  }) async {
    if (isLoading) return;

    try {
      isLoading = true;
      state = const AsyncValue.loading();

      // 1. Realizar la solicitud de login para obtener el token y otros datos básicos.
      final loginResponseMap = await repository.logIn(
        userName: userName,
        password: password,
      );

      // 2. Obtener la información completa del usuario.
      final userInfoMap = await repository.getLoggedUserInfo();

      // 3. Combinar ambos mapas:
      //    - Se toman los datos de userInfoMap (información base del usuario).
      //    - Se sobreescribe o añade el campo 'token' proveniente de loginResponseMap.

      final combinedResponseMap = <String, dynamic>{
        ...userInfoMap,
        ...loginResponseMap,
      };
      print(combinedResponseMap);

      // 4. Convertir el mapa combinado a un objeto LoginResponse.
      final loginData = LoginResponse.fromJson(combinedResponseMap);
      print(loginData);

      // 5. Guardar el token en SecureStorage.
      await _storage.write(key: 'token', value: loginData.token.token);

      // 6. Guardar los datos en Isar (usuarios o clubs).
      await _saveUserOrClub(loginData);

      // 7. Actualizar el estado.
      state = AsyncValue.data(loginData);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    } finally {
      isLoading = false;
    }
  }

  /// 🔹 Guarda la información en Isar según el tipo de usuario (Usuario o Club)
  Future<void> _saveUserOrClub(LoginResponse loginData) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([
      UserEntitySchema,
      ClubEntitySchema,
      TokenEntitySchema,
      RolEntitySchema,
      ProvinciaEntitySchema,
      MunicipioEntitySchema,
      ClubMasJugadoEntitySchema,
    ], directory: dir.path);

    await isar.writeTxn(() async {
      if (loginData.rol.id == 1) {
        /// Buscar el usuario en la base de datos por su `id`
        final existingUser =
            await isar.userEntitys.filter().idEqualTo(loginData.id).findFirst();

        final userEntity = UserMapper.fromLoginResponse(loginData);

        if (existingUser != null) {
          final updatedUser = UserEntity(
            id: existingUser.id,
            userName: userEntity.userName,
            email: userEntity.email,
            nombre: userEntity.nombre,
            apellidos: userEntity.apellidos,
            phoneNumber: userEntity.phoneNumber,
            fechaNacimiento: userEntity.fechaNacimiento,
            fotoPerfil: userEntity.fotoPerfil,
            plc: userEntity.plc,
            vecesBloqueoComunidad: userEntity.vecesBloqueoComunidad,
            numAmigos: userEntity.numAmigos,
            mediaValoraciones: userEntity.mediaValoraciones,
            partidosJugados: userEntity.partidosJugados,
            partidosGanados: userEntity.partidosGanados,
            partidosPerdidos: userEntity.partidosPerdidos,
            esAmigo: userEntity.esAmigo,
            solicitudEstado: userEntity.solicitudEstado,
          );

          await isar.userEntitys.put(updatedUser);

          // Guardar las relaciones de IsarLink
          if (loginData.token != null) {
            final tokenEntity = TokenMapper.fromModel(loginData.token);
            await isar.tokenEntitys.put(tokenEntity);
            updatedUser.token.value = tokenEntity;
            await updatedUser.token.save();
          }

          if (loginData.rol != null) {
            final rolEntity = RolMapper.fromModel(loginData.rol);
            await isar.rolEntitys.put(rolEntity);
            updatedUser.rol.value = rolEntity;
            await updatedUser.rol.save();
          }

          if (loginData.provincia != null) {
            final provinciaEntity = ProvinciaMapper.fromModel(
              loginData.provincia,
            );
            await isar.provinciaEntitys.put(provinciaEntity);
            updatedUser.provincia.value = provinciaEntity;
            await updatedUser.provincia.save();
          }

          if (loginData.municipio != null) {
            final municipioEntity = MunicipioMapper.fromModel(
              loginData.municipio,
            );
            await isar.municipioEntitys.put(municipioEntity);
            updatedUser.municipio.value = municipioEntity;
            await updatedUser.municipio.save();
          }
        } else {
          await isar.userEntitys.put(userEntity);

          // Guardar relaciones de IsarLink
          if (loginData.token != null) {
            final tokenEntity = TokenMapper.fromModel(loginData.token);
            await isar.tokenEntitys.put(tokenEntity);
            userEntity.token.value = tokenEntity;
            await userEntity.token.save();
          }

          if (loginData.rol != null) {
            final rolEntity = RolMapper.fromModel(loginData.rol);
            await isar.rolEntitys.put(rolEntity);
            userEntity.rol.value = rolEntity;
            await userEntity.rol.save();
          }

          if (loginData.provincia != null) {
            final provinciaEntity = ProvinciaMapper.fromModel(
              loginData.provincia,
            );
            await isar.provinciaEntitys.put(provinciaEntity);
            userEntity.provincia.value = provinciaEntity;
            await userEntity.provincia.save();
          }

          if (loginData.municipio != null) {
            final municipioEntity = MunicipioMapper.fromModel(
              loginData.municipio,
            );
            await isar.municipioEntitys.put(municipioEntity);
            userEntity.municipio.value = municipioEntity;
            await userEntity.municipio.save();
          }
        }
      } else if (loginData.rol.id == 2) {
        /// Guardar como `Club`
        final clubEntity = ClubMapper.fromLoginResponse(loginData);

        final existingClub =
            await isar.clubEntitys.filter().idEqualTo(loginData.id).findFirst();

        if (existingClub != null) {
          final updatedClub = ClubEntity(
            id: existingClub.id,
            nombre: clubEntity.nombre,
            fotoPerfil: clubEntity.fotoPerfil,
            plc: clubEntity.plc,
            vecesBloqueoComunidad: clubEntity.vecesBloqueoComunidad,
            idClub: clubEntity.idClub,
          );

          await isar.clubEntitys.put(updatedClub);
        } else {
          await isar.clubEntitys.put(clubEntity);
        }
      }
    });
  }
}
