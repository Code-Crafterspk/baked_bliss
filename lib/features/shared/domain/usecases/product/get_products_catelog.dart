import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/repository/product_repository.dart';
import 'package:baked_bliss/utils/type_def/type_def.dart';
import 'package:fpdart/fpdart.dart';

class GetProductsUseCase implements UseCase<ProductCatalogModel, String> {
  final ProductRepository _repository;

  GetProductsUseCase(this._repository);

  @override
  Future<Either<Failure, ProductCatalogModel>> call(String params) async {
    return await _repository.getProductCatelog(params);
  }
}
