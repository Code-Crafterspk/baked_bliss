import 'dart:convert';

import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/review/review_model.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:http/http.dart';

abstract interface class ReviewRemoteDataSource {
  Future<ApiResponse<List<ReviewModel>>> getUserReviews(String userId,
      {int? page, int? limit});
  Future<ApiResponse<List<ReviewModel>>> getReviews(String productId,
      {int? page, int? limit});
  Future<bool> isReviewed(String productId, String userId);
  Future<bool> reviewAllowed(String productId, String userId);
  Future<void> addReview(ReviewModel review);
  Future<void> updateReview(ReviewModel review);
  Future<void> deleteReview(String reviewId);
}

class ReviewRemoteDataSourceImp implements ReviewRemoteDataSource {
  final Client _client;
  final String baseUrl = 'https://192.168.1.76/api/';

  ReviewRemoteDataSourceImp({required Client client}) : _client = client;

  String handleParms(int? page, int? limit) {
    final queryParams = <String>[];
    if (page != null) {
      queryParams.add('page=$page');
    }
    if (limit != null) {
      queryParams.add('limit=$limit');
    }
    return queryParams.isNotEmpty ? '?${queryParams.join('&')}' : '';
  }

  @override
  Future<void> addReview(ReviewModel review) async {
    return await handleApiException(() async {
      var url = '${baseUrl}reviews/add';

      final response = await _client.post(
        Uri.parse(url),
        body: jsonEncode(review.toJson()),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<bool> reviewAllowed(String productId, String userId) async {
    return await handleApiException(() async {
      final url = '${baseUrl}reviews/allowed';
      final response = await _client.get(
        Uri.parse('$url?productId=$productId&userId=$userId'),
      );
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);
      return jsonData['data'];
    });
  }

  @override
  Future<void> deleteReview(String reviewId) async {
    return await handleApiException(() async {
      final url = '${baseUrl}reviews/delete';
      final response = await _client.delete(
        Uri.parse('$url?reviewId=$reviewId'),
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<ApiResponse<List<ReviewModel>>> getReviews(
    String productId, {
    int? page,
    int? limit,
  }) async {
    return await handleApiException(() async {
      final url =
          '${baseUrl}reviews/product/$productId${handleParms(page, limit)}';
      final response = await _client.get(Uri.parse(url));
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);

      return ApiResponse(
        data: (jsonData['data'] as List)
            .map<ReviewModel>((json) => ReviewModel.fromJson(json))
            .toList(),
        pagination: Pagination.fromJson(jsonData['pagination']),
      );
    });
  }

  @override
  Future<ApiResponse<List<ReviewModel>>> getUserReviews(String userId,
      {int? page, int? limit}) async {
    return await handleApiException(() async {
      final url = '${baseUrl}reviews/user/$userId${handleParms(page, limit)}';
      final response = await _client.get(Uri.parse(url));
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);

      return ApiResponse(
        data: (jsonData['data'] as List)
            .map<ReviewModel>((json) => ReviewModel.fromJson(json))
            .toList(),
        pagination: Pagination.fromJson(jsonData['pagination']),
      );
    });
  }

  @override
  Future<bool> isReviewed(String productId, String userId) async {
    return await handleApiException(() async {
      final url = '${baseUrl}reviews/reviewed';
      final response = await _client.get(
        Uri.parse('$url?productId=$productId&userId=$userId'),
      );
      final data = handleApiResponse(response);
      final jsonData = jsonDecode(data);
      return jsonData['data'];
    });
  }

  @override
  Future<void> updateReview(ReviewModel review) async {
    return await handleApiException(() async {
      final url = '${baseUrl}reviews/update';
      final response = await _client.put(
        Uri.parse(url),
        body: jsonEncode(review.toJson()),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      handleApiResponse(response);
    });
  }
}
