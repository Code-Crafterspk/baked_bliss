import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/utils/type_def/type_def.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ProductRepository {
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getProductsByCategory(String category, {int? limit, int? page});
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> getRelatedProducts(
    String productId, {
    int? limit,
    int? page,
  });
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getRecommendedProducts(String userId, {int? limit, int? page});
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> getTrendingProducts(
      {int? limit, int? page});
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getNewArrivalProducts({int? limit, int? page});
  Future<Either<Failure, ApiResponse<List<ProductModel>>>>
      getBestSellingProducts({int? limit, int? page});
  Future<Either<Failure, ProductCatalogModel>> getProductCatelog(String userId,
      {int? limit, int? page});
}
