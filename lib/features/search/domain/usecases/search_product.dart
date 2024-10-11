import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/search/domain/repository/search_repository.dart';
import 'package:fpdart/fpdart.dart';

class SearchProductUseCase
    implements UseCase<ApiResponse<List<ProductModel>>, SearchProductParams> {
  final SearchRepository _searchRepository;

  SearchProductUseCase(this._searchRepository);

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> call(
      SearchProductParams params) {
    return _searchRepository.searchProducts(params.query,
        limit: params.limit, offset: params.offset);
  }
}

class SearchProductParams {
  final String query;
  final int? limit;
  final int? offset;

  SearchProductParams(this.query, {this.limit, this.offset});
}
