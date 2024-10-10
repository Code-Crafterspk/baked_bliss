import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetCartUseCase implements UseCase<void, GetCartParam> {
  final CartRepository _cartRepository;
  const GetCartUseCase(final CartRepository cartRepository)
      : _cartRepository = cartRepository;
  @override
  Future<Either<Failure, void>> call(GetCartParam params) async {
    return await _cartRepository.getCart(params.userId);
  }
}

class GetCartParam {
  final String userId;

  GetCartParam(this.userId);
}
