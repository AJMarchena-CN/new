import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:piramix/infrastructure/datasources/shared/shared_datasource_impl.dart';
import 'package:piramix/infrastructure/repositories/shared/shared_repository_impl.dart';

final sharedRepositoryProvider = Provider((ref) {
  return SharedRepositoryImpl(SharedDatasourceImpl());
});
