import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:fpdart/fpdart.dart';

class UpdateCartUseCase implements UseCase<void, UpdateCartParam> {
  final CartRepository _cartRepository;
  const UpdateCartUseCase(final CartRepository cartRepository)
      : _cartRepository = cartRepository;
  @override
  Future<Either<Failure, void>> call(UpdateCartParam params) async {
    return await _cartRepository.updateProductInCart(params.cartProduct,
        userId: params.userId);
  }
}

class UpdateCartParam {
  final CartProductModel cartProduct;
  final String userId;

  UpdateCartParam({
    required this.cartProduct,
    required this.userId,
  });
}
