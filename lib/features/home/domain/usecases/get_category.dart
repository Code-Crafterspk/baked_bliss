import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/home/domain/repository/category_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetCategoryUseCase
    implements UseCase<ApiResponse<List<CategoryModel>>, GetCategoryParm> {
  final CategoryRepository _categoryRepository;
  const GetCategoryUseCase(final CategoryRepository categoryRepository)
      : _categoryRepository = categoryRepository;

  @override
  Future<Either<Failure, ApiResponse<List<CategoryModel>>>> call(
      GetCategoryParm params) async {
    return _categoryRepository.getCategories(
      limit: params.limit,
      offset: params.offset,
    );
  }
}

class GetCategoryParm {
  final int? limit;
  final int? offset;

  GetCategoryParm({
    this.limit,
    this.offset,
  });
}
