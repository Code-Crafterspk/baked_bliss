import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';

abstract interface class SearchLocalDataSource {
  Future<List<String>> getSearchHistory();
  Future<void> saveSearchHistory(String query);
  Future<void> removeSearchHistory(String query);
  Future<void> clearSearchHistory();
}

class SearchLocalDataSourceImpl implements SearchLocalDataSource {
  final AppDatabase _db;

  SearchLocalDataSourceImpl(this._db);

  @override
  Future<void> clearSearchHistory() async {
    await handleLocalDatabaseException(() async {
      await _db.clearSearchHistory();
    });
  }

  @override
  Future<List<String>> getSearchHistory() async {
    return await handleLocalDatabaseException(() async {
      return await _db.getSearchHistory();
    });
  }

  @override
  Future<void> saveSearchHistory(String searchModel) async {
    return await handleLocalDatabaseException(() async {
      return await _db.addSearchHistory(searchModel);
    });
  }

  @override
  Future<void> removeSearchHistory(String query) async {
    return await handleLocalDatabaseException(() async {
      return await _db.removeSearchHistory(query);
    });
  }
}
