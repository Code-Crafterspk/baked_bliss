import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/review/review_model.dart';
import 'package:baked_bliss/features/review/data/data_source/review_remote_data_source.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class ReviewRepositoryImp implements ReviewRepository {
  final ReviewRemoteDataSource _reviewRemoteDataSource;

  ReviewRepositoryImp({required ReviewRemoteDataSource reviewRemoteDataSource})
      : _reviewRemoteDataSource = reviewRemoteDataSource;

  @override
  Future<Either<Failure, void>> addReview(ReviewModel review) async {
    try {
      await _reviewRemoteDataSource.addReview(review);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> deleteReview(String reviewId) async {
    try {
      await _reviewRemoteDataSource.deleteReview(reviewId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ReviewModel>>>> getReviews(
    String productId, {
    int? limit,
    int? offset,
  }) async {
    try {
      final reviews = await _reviewRemoteDataSource.getReviews(productId,
          limit: limit, offset: offset);
      return right(reviews);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, ApiResponse<List<ReviewModel>>>> getUserReviews(
    String userId, {
    int? limit,
    int? offset,
  }) async {
    try {
      final reviews = await _reviewRemoteDataSource.getUserReviews(userId,
          limit: limit, offset: offset);
      return right(reviews);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> isReviewed(
      String productId, String userId) async {
    try {
      final isReviewed =
          await _reviewRemoteDataSource.isReviewed(productId, userId);
      return right(isReviewed);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> reviewAllowed(
      String productId, String userId) async {
    try {
      final isAllowed =
          await _reviewRemoteDataSource.reviewAllowed(productId, userId);
      return right(isAllowed);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> updateReview(ReviewModel review) async {
    try {
      await _reviewRemoteDataSource.updateReview(review);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
