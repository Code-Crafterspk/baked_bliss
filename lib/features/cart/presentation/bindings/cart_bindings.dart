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
      ..put<CartRemoteDataSourceImp>(CartRemoteDataSourceImp(
        auth: Get.find(),
        client: Get.find(),
      ))
      ..put(CartLocalDataSourceImp(
        db: Get.find(),
      ))
      ..put<CartRepository>(CartRepositoryImp(
        Get.find(),
        Get.find(),
        Get.find(),
      ))
      ..put(AddToCartUseCase(Get.find()))
      ..put(RemoveFromCartUseCase(Get.find()))
      ..put(GetCartUseCase(Get.find()))
      ..put(UpdateCartUseCase(Get.find()))
      ..put<CartController>(
        CartController(
          Get.find(),
          Get.find(),
          Get.find(),
          Get.find(),
          Get.find(),
        ),
      );
  }
}
