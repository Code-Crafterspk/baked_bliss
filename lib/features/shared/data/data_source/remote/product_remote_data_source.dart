import 'dart:convert';

import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/features/shared/data/data_source/product_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:baked_bliss/utils/type_def/type_def.dart';
import 'package:http/http.dart';

class ProductRemoteDataSourceImpl implements ProductDataSource {
  final Client _client;
  final String baseUrl = 'https://192.168.1.76/api/';

  ProductRemoteDataSourceImpl({required Client client}) : _client = client;
  Future<ApiResponse<List<ProductModel>>> _fetchProducts(
    String endpoint, {
    String? userId,
    String? productId,
    int? offset,
    int? limit,
  }) async {
    return await handleApiException(() async {
      var url = '${baseUrl}products/$endpoint';

      final queryParams = <String>[];

      if (userId != null) {
        queryParams.add('userId=$userId');
      }
      if (productId != null) {
        queryParams.add('productId=$productId');
      }
      if (offset != null) {
        queryParams.add('offset=$offset');
      }
      if (limit != null) {
        queryParams.add('limit=$limit');
      }

      if (queryParams.isNotEmpty) {
        url = '$url?${queryParams.join('&')}';
      }

      final response = await _client.get(Uri.parse(url));
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);

      return ApiResponse(
        data: (jsonData['data'] as List)
            .map<ProductModel>((json) => ProductModel.fromJson(json))
            .toList(),
        pagination: Pagination.fromJson(
          jsonData['pagination'],
        ),
      );
    });
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getBestSellingProducts(
      {int? limit, int? offset}) async {
    return await _fetchProducts('best-selling');
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getNewArrivalProducts(
      {int? limit, int? offset}) async {
    return await _fetchProducts('new-arrival');
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getRecommendedProducts(String userId,
      {int? limit, int? offset}) async {
    return await _fetchProducts('recommended', userId: userId);
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getRelatedProducts(String productId,
      {int? limit, int? offset}) async {
    return await _fetchProducts('related', productId: productId);
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getTrendingProducts(
      {int? limit, int? offset}) async {
    return await _fetchProducts('trending');
  }

  @override
  Future<ProductCatalogModel> getProductCatelog(String userId,
      {int? limit, int? offset}) async {
    return await handleApiException(
      () async {
        final url = '${baseUrl}products/list/$userId';
        final response = await _client.get(Uri.parse(url));
        final data = handleApiResponse(response);
        final jsonData = jsonDecode(data);
        return (jsonData['data'] as Map<String, List>).map(
          (key, value) => MapEntry(
              key,
              value
                  .map<ProductModel>((json) => ProductModel.fromJson(json))
                  .toList()),
        );
      },
    );
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getProductsByCategory(String category,
      {int? limit, int? offset}) async {
    return await handleApiException(() async {
      final url = '${baseUrl}products/category/$category';
      final response = await _client.get(Uri.parse(url));
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);

      return ApiResponse(
        data: (jsonData['data'] as List)
            .map<ProductModel>((json) => ProductModel.fromJson(json))
            .toList(),
        pagination: Pagination.fromJson(
          jsonData['pagination'],
        ),
      );
    });
  }

  @override
  Future<ApiResponse<CategoryModel>> getCategories() async {
    return await handleApiException(() async {
      final url = '${baseUrl}categories';
      final response = await _client.get(Uri.parse(url));
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);

      return ApiResponse(
        data: CategoryModel.fromJson(jsonData['data']),
        pagination: Pagination.fromJson(jsonData['pagination']),
      );
    });
  }

  @override
  Future<ProductModel> getProductDetail(String productId) async {
    return await handleApiException(() async {
      final url = '${baseUrl}products/$productId';
      final response = await _client.get(Uri.parse(url));
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);
      return ProductModel.fromJson(jsonData['data']);
    });
  }
}
