abstract class SharedRepository {
  Future<Map<String, dynamic>> logIn({
    required String email,
    required String password,
  });

  Future<Map<String, dynamic>> getLoggedUserInfo();
}
