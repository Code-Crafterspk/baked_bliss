import 'package:baked_bliss/features/cart/data/data_source/local/local_data_source.dart';
import 'package:baked_bliss/features/cart/data/data_source/remote/remote_data_source.dart';
import 'package:baked_bliss/features/cart/data/repository/cart_repository_imp.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:baked_bliss/features/cart/domain/usecases/add_to_cart.dart';
import 'package:baked_bliss/features/cart/domain/usecases/get_cart.dart';
import 'package:baked_bliss/features/cart/domain/usecases/remove_from_cart.dart';
import 'package:baked_bliss/features/cart/domain/usecases/update_cart.dart';
import 'package:baked_bliss/features/cart/presentation/controller/cart_controller.dart';
import 'package:get/get.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<CartRemoteDataSourceImp>(() => CartRemoteDataSourceImp(
            auth: Get.find(),
            client: Get.find(),
          ))
      ..lazyPut(() => CartLocalDataSourceImp(
            db: Get.find(),
          ))
      ..lazyPut<CartRepository>(() => CartRepositoryImp(
            Get.find(),
            Get.find(),
            Get.find(),
          ))
      ..lazyPut(() => AddToCartUseCase(Get.find()))
      ..lazyPut(() => RemoveFromCartUseCase(Get.find()))
      ..lazyPut(() => GetCartUseCase(Get.find()))
      ..lazyPut(() => UpdateCartUseCase(Get.find()))
      ..lazyPut<CartController>(
        () => CartController(
          Get.find(),
          Get.find(),
          Get.find(),
          Get.find(),
          Get.find(),
        ),
      );
  }
}
