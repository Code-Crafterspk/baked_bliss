import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class AllowAddReview implements UseCase<bool, ReviewAddReviewParms> {
  final ReviewRepository reviewRepository;

  AllowAddReview(this.reviewRepository);

  @override
  Future<Either<Failure, bool>> call(ReviewAddReviewParms params) async {
    return await reviewRepository.reviewAllowed(
        params.productId, params.userId);
  }
}

class ReviewAddReviewParms {
  final String productId;
  final String userId;

  ReviewAddReviewParms({required this.productId, required this.userId});
}
