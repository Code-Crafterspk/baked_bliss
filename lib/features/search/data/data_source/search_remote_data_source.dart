import 'dart:convert';

import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:http/http.dart';

abstract interface class SearchRemoteDataSource {
  Future<ApiResponse<List<ProductModel>>> searchProducts(
    String query, {
    int? limit,
    int? offset,
  });
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final Client _client;
  final String _baseUrl = 'https:192.168.1.76';

  SearchRemoteDataSourceImpl(this._client);

  @override
  Future<ApiResponse<List<ProductModel>>> searchProducts(
    String query, {
    int? limit,
    int? offset,
  }) async {
    return handleApiException(() async {
      final response = await _client.get(
        Uri.parse(
            '$_baseUrl/products/search?query=$query&limit=$limit&offset=$offset'),
      );
      final jsonData = handleApiResponse(response);
      final data = jsonDecode(jsonData);
      return ApiResponse(
        data: (data['data'] as List)
            .map((e) => ProductModel.fromJson(e))
            .toList(),
        pagination: Pagination.fromJson(data['pagination']),
      );
    });
  }
}
