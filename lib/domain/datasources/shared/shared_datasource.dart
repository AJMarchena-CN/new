abstract class SharedDatasource {
  Future<Map<String, dynamic>> logIn({
    required String userName,
    required String password,
  });

  Future<Map<String, dynamic>> getLoggedUserInfo();
}
