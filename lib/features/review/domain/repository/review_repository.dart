import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/review/review_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ReviewRepository {
  Future<Either<Failure, void>> addReview(ReviewModel review);
  Future<Either<Failure, bool>> reviewAllowed(String productId, String userId);
  Future<Either<Failure, void>> updateReview(ReviewModel review);
  Future<Either<Failure, void>> deleteReview(String reviewId);
  Future<Either<Failure, ApiResponse<List<ReviewModel>>>> getReviews(
    String productId, {
    int? limit,
    int? page,
  });
  Future<Either<Failure, ApiResponse<List<ReviewModel>>>> getUserReviews(
    String userId, {
    int? limit,
    int? page,
  });
  Future<Either<Failure, bool>> isReviewed(String productId, String userId);
}
