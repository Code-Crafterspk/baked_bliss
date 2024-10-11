import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/features/search/data/data_source/search_local_data_source.dart';
import 'package:baked_bliss/features/search/data/data_source/search_remote_data_source.dart';
import 'package:baked_bliss/features/search/domain/repository/search_repository.dart';
import 'package:fpdart/fpdart.dart';

class SearchRepositoryImp implements SearchRepository {
  final SearchRemoteDataSource _searchRemoteDataSource;
  final SearchLocalDataSource _searchLocalDataSource;

  SearchRepositoryImp(
      this._searchRemoteDataSource, this._searchLocalDataSource);

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> searchProducts(
      String query,
      {int? limit,
      int? offset}) async {
    try {
      final res = await _searchRemoteDataSource.searchProducts(query,
          limit: limit, offset: offset);
      await _searchLocalDataSource.saveSearchHistory(query);
      return right(res);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> clearSearchHistory() async {
    try {
      await _searchLocalDataSource.clearSearchHistory();
      return right(unit);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getSearchHistory() async {
    try {
      final res = await _searchLocalDataSource.getSearchHistory();
      return right(res);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeSearchHistory(String query) async {
    try {
      await _searchLocalDataSource.removeSearchHistory(query);
      return right(unit);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, Unit>> saveSearchHistory(String query) async {
    try {
      await _searchLocalDataSource.saveSearchHistory(query);
      return right(unit);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
