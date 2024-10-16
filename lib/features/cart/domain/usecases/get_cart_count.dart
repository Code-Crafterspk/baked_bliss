import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetCartCountUseCase implements UseCase<int, String> {
  final CartRepository cartRepository;

  GetCartCountUseCase(this.cartRepository);

  @override
  Future<Either<Failure, int>> call(String params) async {
    return await cartRepository.getCartCount(params);
  }
}
