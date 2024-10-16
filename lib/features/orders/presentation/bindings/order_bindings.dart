import 'package:baked_bliss/features/orders/data/data_source/local/order_local_data_source.dart';
import 'package:baked_bliss/features/orders/data/data_source/remote/order_remote_data_source.dart';
import 'package:baked_bliss/features/orders/data/repository/order_repository_imp.dart';
import 'package:baked_bliss/features/orders/domain/repository/order_repository.dart';
import 'package:baked_bliss/features/orders/presentation/controller/order_controller.dart';
import 'package:get/get.dart';

class OrderBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut(() => OrderLocalDataSource(Get.find()))
      ..lazyPut(() => OrderRemoteDataSource(Get.find()))
      ..lazyPut<OrderRepository>(() => OrderRepositoryImp(
            Get.find(),
            Get.find(),
            Get.find(),
          ))
      ..lazyPut<OrderController>(() => OrderController(
            Get.find(),
            Get.find(),
            Get.find(),
            Get.find(),
          ));
  }
}
