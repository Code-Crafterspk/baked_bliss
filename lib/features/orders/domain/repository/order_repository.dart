import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class OrderRepository {
  Future<Either<Failure, void>> placeOrder(OrderModel order,
      {required String userId});
  Future<Either<Failure, void>> cancelOrder(OrderModel order,
      {required String userId});
  Future<Either<Failure, OrderModel>> getOrder(String orderId,
      {required String userId});
  Future<Either<Failure, List<OrderModel>>> getOrders({required String userId});
}
