import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/features/orders/data/data_source/local/order_local_data_source.dart';
import 'package:baked_bliss/features/orders/data/data_source/remote/order_remote_data_source.dart';
import 'package:baked_bliss/features/orders/domain/repository/order_repository.dart';
import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:fpdart/fpdart.dart';

class OrderRepositoryImp implements OrderRepository {
  final OrderLocalDataSource _localDataSource;
  final OrderRemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;

  OrderRepositoryImp(
      this._localDataSource, this._remoteDataSource, this._networkInfo);

  @override
  Future<Either<Failure, void>> cancelOrder(OrderModel order,
      {required String userId}) async {
    try {
      await _remoteDataSource.cancelOrder(order, userId: userId);
      await _localDataSource.cancelOrder(order, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, OrderModel>> getOrder(String orderId,
      {required String userId}) async {
    try {
      if (!_networkInfo.isConnected) {
        final order = await _localDataSource.getOrder(orderId, userId: userId);
        return right(order);
      }
      final order = await _remoteDataSource.getOrder(orderId, userId: userId);
      await _localDataSource.saveOrders([order]);

      return right(order);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<OrderModel>>> getOrders(
      {required String userId}) async {
    try {
      if (!_networkInfo.isConnected) {
        final orders = await _localDataSource.getOrders(userId: userId);
        return right(orders);
      }
      final orders = await _remoteDataSource.getOrders(userId: userId);
      await _localDataSource.saveOrders(orders);
      return right(orders);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> placeOrder(OrderModel order,
      {required String userId}) async {
    try {
      await _remoteDataSource.placeOrder(order, userId: userId);
      await _localDataSource.placeOrder(order, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
