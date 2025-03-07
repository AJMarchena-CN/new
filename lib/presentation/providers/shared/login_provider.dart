import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:piramix/domain/repositories/shared/shared_repository.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';
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

      /// 🔹 1. Hacer la solicitud de login y obtener la información del usuario
      final loginResponse = await repository.logIn(
        userName: userName,
        password: password,
      );
      final userInfo = await repository.getLoggedUserInfo();
      final loginData = LoginResponse.fromJson(userInfo);

      /// 🔹 2. Guardar el token en `SecureStorage`
      await _storage.write(key: 'token', value: loginData.token.token);

      /// 🔹 3. Guardar los datos en Isar según el tipo de usuario
      await _saveUserOrClub(loginData);

      /// 🔹 4. Actualizar el estado con `LoginResponse`
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
    ], directory: dir.path);

    await isar.writeTxn(() async {
      if (loginData.rol.id == 1) {
        /// Guardar como `Usuario`
        final userEntity = UserMapper.fromLoginResponse(loginData);
        await isar.userEntitys.put(userEntity);
      } else if (loginData.rol.id == 2) {
        /// Guardar como `Club`
        final clubEntity = ClubMapper.fromLoginResponse(loginData);
        await isar.clubEntitys.put(clubEntity);
      }
    });
  }
}
