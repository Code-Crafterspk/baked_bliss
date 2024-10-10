import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:fpdart/fpdart.dart';

class AddToCartUseCase implements UseCase<void, AddToCartParam> {
  final CartRepository _cartRepository;
  const AddToCartUseCase(final CartRepository cartRepository)
      : _cartRepository = cartRepository;
  @override
  Future<Either<Failure, void>> call(AddToCartParam params) async {
    return await _cartRepository.addProductToCart(params.cartProduct,
        userId: params.userId);
  }
}

class AddToCartParam {
  final CartProductModel cartProduct;
  final String userId;

  AddToCartParam({
    required this.cartProduct,
    required this.userId,
  });
}
