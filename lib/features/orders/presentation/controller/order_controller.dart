import 'package:baked_bliss/features/orders/domain/usecases/cancel_order.dart';
import 'package:baked_bliss/features/orders/domain/usecases/get_order.dart';
import 'package:baked_bliss/features/orders/domain/usecases/get_orders.dart';
import 'package:baked_bliss/features/orders/domain/usecases/place_order.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  final GetOrdeUseCase _getOrder;
  final GetOrdersUseCase _getOrders;
  final PlaceOrderUseCase _placeOrder;
  final CancelOrderUseCase _cancelOrder;

  OrderController(
      this._getOrder, this._getOrders, this._placeOrder, this._cancelOrder);
}
