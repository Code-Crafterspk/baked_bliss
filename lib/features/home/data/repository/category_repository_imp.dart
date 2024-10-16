import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/features/home/data/data_source/local/category_local_data_source.dart';
import 'package:baked_bliss/features/home/data/data_source/remote/cateory_remote_data_source.dart';
import 'package:baked_bliss/features/home/domain/repository/category_repository.dart';
import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:fpdart/fpdart.dart';

class CategoryRepositoryImp implements CategoryRepository {
  final CategoryLocalDataSource _localDataSource;
  final CategoryRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  CategoryRepositoryImp(
      this._localDataSource, this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, ApiResponse<List<CategoryModel>>>> getCategories(
      {int? limit, int? offset}) async {
    try {
      if (!_networkInfo.isConnected) {
        final categories =
            await _localDataSource.getCategories(limit: limit, offset: offset);
        return right(categories);
      }
      final categories =
          await _remoteDataSource.getCategories(limit: limit, offset: offset);
      await _localDataSource.addCategories(categories.data);
      return right(categories);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
