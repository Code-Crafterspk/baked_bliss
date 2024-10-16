import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/orders/domain/repository/order_repository.dart';
import 'package:fpdart/fpdart.dart';

class GetOrdersUseCase implements UseCase<List<OrderModel>, GetOrdersParm> {
  final OrderRepository _orderRepository;
  const GetOrdersUseCase(final OrderRepository orderRepository)
      : _orderRepository = orderRepository;
  @override
  Future<Either<Failure, List<OrderModel>>> call(GetOrdersParm params) async {
    return await _orderRepository.getOrders(userId: params.userId);
  }
}

class GetOrdersParm {
  final String userId;

  GetOrdersParm({
    required this.userId,
  });
}
