import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class IsReviewedUseCase implements UseCase<bool, IsReviewedParms> {
  final ReviewRepository reviewRepository;

  IsReviewedUseCase(this.reviewRepository);

  @override
  Future<Either<Failure, bool>> call(IsReviewedParms params) async {
    return await reviewRepository.isReviewed(params.productId, params.userId);
  }
}

class IsReviewedParms {
  final String productId;
  final String userId;

  IsReviewedParms({required this.productId, required this.userId});
}
