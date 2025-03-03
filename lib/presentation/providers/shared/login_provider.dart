import 'package:isar/isar.dart';
import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/domain/repositories/shared/shared_repository.dart';
import 'package:piramix/infrastructure/mappers/mappers_barrel.dart';
import 'package:piramix/infrastructure/models/shared/login_reponse.dart';
import 'package:piramix/presentation/providers/shared/shared_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:path_provider/path_provider.dart';

final loginProvider =
    StateNotifierProvider<LoginNotifier, AsyncValue<UserEntity?>>((ref) {
      final repository = ref.watch(sharedRepositoryProvider);
      return LoginNotifier(repository: repository);
    });

class LoginNotifier extends StateNotifier<AsyncValue<UserEntity?>> {
  final SharedRepository repository;
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  bool isLoading = false;

  LoginNotifier({required this.repository})
    : super(const AsyncValue.data(null));

  Future<void> logIn({required String email, required String password}) async {
    if (isLoading) return;

    try {
      isLoading = true;
      state = const AsyncValue.loading();

      // 1️⃣ Llamamos al login
      final loginResponse = await repository.logIn(
        email: email,
        password: password,
      );

      // 2️⃣ Llamamos a la API para obtener la info del usuario autenticado
      final userInfo = await repository.getLoggedUserInfo();

      // 3️⃣ Identificar si el usuario es un `Usuario` o un `Club`
      if (userInfo['rol']['id'] == 1) {
        // Usuario normal
        final userEntity = UserMapper.fromLoginResponse(
          LoginResponse.fromJson(userInfo),
        );
        await _saveUserToIsar(userEntity);
        state = AsyncValue.data(userEntity);
      } else if (userInfo['rol']['id'] == 2) {
        // Club
        final clubEntity = ClubMapper.fromLoginResponse(
          LoginResponse.fromJson(userInfo),
        );
        await _saveClubToIsar(clubEntity);
        state = AsyncValue.data(
          null,
        ); // No queremos un `ClubEntity` en el estado
      }
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    } finally {
      isLoading = false;
    }
  }

  /// Guardar usuario en Isar
  Future<void> _saveUserToIsar(UserEntity user) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([UserEntitySchema], directory: dir.path);

    await isar.writeTxn(() async {
      await isar.userEntitys.put(user);
    });
  }

  /// Guardar club en Isar
  Future<void> _saveClubToIsar(ClubEntity club) async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open([ClubEntitySchema], directory: dir.path);

    await isar.writeTxn(() async {
      await isar.clubEntitys.put(club);
    });
  }
}
