import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/orders/domain/repository/order_repository.dart';
import 'package:fpdart/fpdart.dart';

class PlaceOrderUseCase implements UseCase<void, PlaceOrderParm> {
  final OrderRepository _orderRepository;
  const PlaceOrderUseCase(final OrderRepository orderRepository)
      : _orderRepository = orderRepository;
  @override
  Future<Either<Failure, void>> call(PlaceOrderParm params) async {
    return await _orderRepository.placeOrder(params.order,
        userId: params.userId);
  }
}

class PlaceOrderParm {
  final OrderModel order;
  final String userId;

  PlaceOrderParm({
    required this.order,
    required this.userId,
  });
}
