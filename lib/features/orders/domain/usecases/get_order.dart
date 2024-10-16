import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/orders/domain/repository/order_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetOrdeUseCase implements UseCase<OrderModel, GetOrderParm> {
  final OrderRepository _orderRepository;
  const GetOrdeUseCase(final OrderRepository orderRepository)
      : _orderRepository = orderRepository;
  @override
  Future<Either<Failure, OrderModel>> call(GetOrderParm params) async {
    return await _orderRepository.getOrder(params.orderId,
        userId: params.userId);
  }
}

class GetOrderParm {
  final String orderId;
  final String userId;

  GetOrderParm({
    required this.orderId,
    required this.userId,
  });
}
