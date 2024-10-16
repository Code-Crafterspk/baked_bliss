import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/orders/domain/repository/order_repository.dart';
import 'package:fpdart/fpdart.dart';

class CancelOrderUseCase implements UseCase<void, CancelOrderParm> {
  final OrderRepository _orderRepository;
  const CancelOrderUseCase(final OrderRepository orderRepository)
      : _orderRepository = orderRepository;
  @override
  Future<Either<Failure, void>> call(CancelOrderParm params) async {
    return await _orderRepository.cancelOrder(params.order,
        userId: params.userId);
  }
}

class CancelOrderParm {
  final OrderModel order;
  final String userId;

  CancelOrderParm({
    required this.order,
    required this.userId,
  });
}
