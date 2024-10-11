import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/api/api_response.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/model/get_product_parm.dart';
import 'package:baked_bliss/features/shared/domain/repository/product_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetBestSellingProductUseCase
    implements UseCase<ApiResponse<List<ProductModel>>, GetProductParm> {
  final ProductRepository _repository;

  GetBestSellingProductUseCase(this._repository);

  @override
  Future<Either<Failure, ApiResponse<List<ProductModel>>>> call(
      GetProductParm params) async {
    return _repository.getBestSellingProducts(
        offset: params.offset, limit: params.limit);
  }
}
