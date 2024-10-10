import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/review/review_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetReviewUseCase
    implements UseCase<ApiResponse<List<ReviewModel>>, GetReviewParms> {
  final ReviewRepository reviewRepository;

  GetReviewUseCase(this.reviewRepository);

  @override
  Future<Either<Failure, ApiResponse<List<ReviewModel>>>> call(
      GetReviewParms params) async {
    return await reviewRepository.getReviews(params.productId,
        page: params.page, limit: params.limit);
  }
}

class GetReviewParms {
  final String productId;
  final int page;
  final int limit;

  GetReviewParms(
      {required this.productId, required this.page, required this.limit});
}
