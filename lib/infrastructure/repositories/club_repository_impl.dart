import 'package:piramix/domain/datasources/club_datasource.dart';
import 'package:piramix/domain/repositories/club_repository.dart';
import 'package:piramix/infrastructure/models/club/club_models.dart';

class ClubRepositoryImpl implements ClubRepository {
  final ClubDatasource clubDataSource;

  ClubRepositoryImpl(this.clubDataSource);

  @override
  Future<void> clubToggleFavorite({required int id}) {
    return clubDataSource.clubToggleFavorite(id: id);
  }

  @override
  Future<ClubInterno> getClubById({required int id}) {
    return clubDataSource.getClubById(id: id);
  }

  @override
  Future<ClubModel> getMapsClubs(Map<String, dynamic> filters) {
    return clubDataSource.getMapsClubs(filters);
  }
}
