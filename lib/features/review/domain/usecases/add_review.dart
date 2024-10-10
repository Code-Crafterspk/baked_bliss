import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/review/review_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class AddReviewUseCase implements UseCase<void, ReviewModel> {
  final ReviewRepository reviewRepository;

  AddReviewUseCase(this.reviewRepository);

  @override
  Future<Either<Failure, void>> call(ReviewModel params) async {
    return await reviewRepository.addReview(params);
  }
}
