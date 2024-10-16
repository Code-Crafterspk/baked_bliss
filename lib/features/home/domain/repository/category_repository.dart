import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class CategoryRepository {
  Future<Either<Failure, ApiResponse<List<CategoryModel>>>> getCategories(
      {int? limit, int? offset});
}
