import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:fpdart/fpdart.dart';

class RemoveFromCartUseCase implements UseCase<void, RemoveFromCartParm> {
  final CartRepository _cartRepository;
  const RemoveFromCartUseCase(final CartRepository cartRepository)
      : _cartRepository = cartRepository;
  @override
  Future<Either<Failure, void>> call(RemoveFromCartParm params) async {
    return await _cartRepository.removeProductFromCart(params.cartProduct,
        userId: params.userId);
  }
}

class RemoveFromCartParm {
  final CartProductModel cartProduct;
  final String userId;

  RemoveFromCartParm({
    required this.cartProduct,
    required this.userId,
  });
}
