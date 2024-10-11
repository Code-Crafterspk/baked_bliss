import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/features/shared/data/data_source/product_data_source.dart';
import 'package:baked_bliss/features/shared/domain/repository/product_repository.dart';
import 'package:baked_bliss/utils/type_def/type_def.dart';
import 'package:fpdart/fpdart.dart';

class ProductRepositoryImp implements ProductRepository {
  final ProductDataSource _productDataSource;

  ProductRepositoryImp({required ProductDataSource productDataSource})
      : _productDataSource = productDataSource;

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getBestSellingProducts({int? limit, int? offset}) async {
    try {
      final response = await _productDataSource.getBestSellingProducts(
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getNewArrivalProducts({int? limit, int? offset}) async {
    try {
      final response = await _productDataSource.getNewArrivalProducts(
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ProductCatalogModel>> getProductCatelog(String userId,
      {int? limit, int? offset}) async {
    try {
      final response = await _productDataSource.getProductCatelog(userId,
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getProductsByCategory(String category, {int? limit, int? offset}) async {
    try {
      final response = await _productDataSource.getProductsByCategory(category,
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getRecommendedProducts(String userId, {int? limit, int? offset}) async {
    try {
      final response = await _productDataSource.getRecommendedProducts(userId,
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> getRelatedProducts(
      String productId,
      {int? limit,
      int? offset}) async {
    try {
      final response = await _productDataSource.getRelatedProducts(productId,
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> getTrendingProducts(
      {int? limit, int? offset}) async {
    try {
      final response = await _productDataSource.getTrendingProducts(
          limit: limit, offset: offset);
      return right(response);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
