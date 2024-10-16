import 'dart:convert';

import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/features/home/data/data_source/category_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:http/http.dart';

class CategoryRemoteDataSource implements CategoryDataSource {
  final String _baseUrl = 'https://192.168.1.76/api/category/';
  final Client _client;

  CategoryRemoteDataSource(this._client);

  @override
  Future<ApiResponse<List<CategoryModel>>> getCategories(
      {int? limit, int? offset}) async {
    return handleApiException(() async {
      final response = await _client.get(Uri.parse(_baseUrl));
      final jsonData = handleApiResponse(response);
      final data = jsonDecode(jsonData);
      return ApiResponse<List<CategoryModel>>(
        data: (data['data'] as List)
            .map<CategoryModel>((e) => CategoryModel.fromJson(e))
            .toList(),
        pagination: Pagination.fromJson(data['pagination']),
      );
    });
  }
}
