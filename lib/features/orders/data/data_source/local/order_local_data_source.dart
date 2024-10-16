import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/features/orders/data/data_source/order_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';

class OrderLocalDataSource implements OrderDataSource {
  final AppDatabase _db;

  OrderLocalDataSource(this._db);

  @override
  Future<void> cancelOrder(OrderModel order, {required String userId}) async {
    handleLocalDatabaseException(() async {
      await _db.cancelOrder(order);
    });
  }

  @override
  Future<OrderModel> getOrder(String orderId, {required String userId}) async {
    return handleLocalDatabaseException(() async {
      final order = await _db.getOrder(orderId);
      return order;
    });
  }

  @override
  Future<List<OrderModel>> getOrders({required String userId}) async {
    return handleLocalDatabaseException(() async {
      final orders = await _db.getOrders();
      return orders;
    });
  }

  @override
  Future<void> placeOrder(OrderModel order, {required String userId}) async {
    return handleLocalDatabaseException(() async {
      await _db.placeOrder(order);
    });
  }

  Future<void> saveOrders(List<OrderModel> list) async {
    return handleLocalDatabaseException(() async {
      await _db.saveOrders(list);
    });
  }
}
