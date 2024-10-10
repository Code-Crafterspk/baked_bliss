import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/utils/type_def/type_def.dart';

abstract interface class ProductDataSource {
  Future<ApiResponse<List<ProductModel>>> getProductsByCategory(String category,
      {int? limit, int? page});
  Future<ApiResponse<List<ProductModel>>> getRelatedProducts(String productId,
      {int? limit, int? page});
  Future<ApiResponse<List<ProductModel>>> getRecommendedProducts(String userId,
      {int? limit, int? page});
  Future<ApiResponse<List<ProductModel>>> getTrendingProducts(
      {int? limit, int? page});
  Future<ApiResponse<List<ProductModel>>> getNewArrivalProducts(
      {int? limit, int? page});
  Future<ApiResponse<List<ProductModel>>> getBestSellingProducts(
      {int? limit, int? page});
  Future<ProductCatalogModel> getProductCatelog(String userId,
      {int? limit, int? page});
}