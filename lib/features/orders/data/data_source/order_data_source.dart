import 'package:baked_bliss/common/model/order_product/order_model.dart';

abstract interface class OrderDataSource {
  Future<void> placeOrder(OrderModel order, {required String userId});
  Future<void> cancelOrder(OrderModel order, {required String userId});
  Future<OrderModel> getOrder(String orderId, {required String userId});
  Future<List<OrderModel>> getOrders({required String userId});
}
