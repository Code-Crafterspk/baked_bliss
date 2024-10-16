import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/features/home/data/data_source/category_data_source.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';

class CategoryLocalDataSource implements CategoryDataSource {
  final AppDatabase _db;

  CategoryLocalDataSource(this._db);

  @override
  Future<ApiResponse<List<CategoryModel>>> getCategories(
      {int? limit, int? offset}) async {
    final categories = await _db.getCategories(limit: limit, offset: offset);
    return ApiResponse<List<CategoryModel>>(
      data: categories,
      pagination: null,
    );
  }

  addCategories(List<CategoryModel> list) {}
}
