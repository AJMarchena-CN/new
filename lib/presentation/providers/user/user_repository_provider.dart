import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piramix/infrastructure/repositories/user_repository_impl.dart';
import 'package:piramix/infrastructure/datasources/user_datasource_impl.dart';

final userRepositoryProvider = Provider((ref) {
  return UserRepositoryImpl(UserDataSourceImpl());
});
