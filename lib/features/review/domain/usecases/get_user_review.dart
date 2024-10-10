import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/review/review_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/review/domain/repository/review_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetUserReviewUseCase
    implements UseCase<ApiResponse<List<ReviewModel>>, GetUserReviewParms> {
  final ReviewRepository reviewRepository;

  GetUserReviewUseCase(this.reviewRepository);

  @override
  Future<Either<Failure, ApiResponse<List<ReviewModel>>>> call(
      GetUserReviewParms params) async {
    return await reviewRepository.getUserReviews(params.userId,
        page: params.page, limit: params.limit);
  }
}

class GetUserReviewParms {
  final String userId;
  final int? page;
  final int? limit;

  GetUserReviewParms(
      {required this.userId, required this.page, required this.limit});
}
