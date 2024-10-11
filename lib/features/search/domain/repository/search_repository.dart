import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class SearchRepository {
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> searchProducts(
    String query, {
    int? limit,
    int? offset,
  });
  Future<Either<Failure, List<String>>> getSearchHistory();
  Future<Either<Failure, Unit>> saveSearchHistory(String query);
  Future<Either<Failure, Unit>> removeSearchHistory(String query);
  Future<Either<Failure, Unit>> clearSearchHistory();
}
