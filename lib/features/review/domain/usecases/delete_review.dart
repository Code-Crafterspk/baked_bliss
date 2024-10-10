import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class DeleteReviewUseCase implements UseCase<void, String> {
  final ReviewRepository reviewRepository;

  DeleteReviewUseCase(this.reviewRepository);

  @override
  Future<Either<Failure, void>> call(String params) async {
    return await reviewRepository.deleteReview(params);
  }
}
