import 'package:piramix/domain/entities/entities_barrel.dart';
import 'package:piramix/presentation/providers/user/user_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, UserEntity?>((ref) {
  final logUser = ref.watch(userRepositoryProvider).logIn;
  return LoginNotifier(logUser: logUser);
});

typedef LoginCallBack =
    Future<UserEntity> Function({
      required String email,
      required String password,
    });

class LoginNotifier extends StateNotifier<UserEntity?> {
  bool isLoading = false;
  final LoginCallBack logUser;

  LoginNotifier({required this.logUser}) : super(null);

  Future<void> logIn({required String email, required String password}) async {
    isLoading = true;
    final UserEntity userInfo = await logUser(email: email, password: password);
    state = [...state, userInfo];
    isLoading = false;
  }
}
