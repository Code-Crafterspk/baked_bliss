import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';

abstract interface class CategoryDataSource {
  Future<ApiResponse<List<CategoryModel>>> getCategories(
      {int? limit, int? offset});
}
