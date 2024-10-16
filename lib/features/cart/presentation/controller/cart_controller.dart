// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:baked_bliss/features/cart/domain/usecases/get_cart_count.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:get/get.dart';

import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/features/cart/domain/usecases/add_to_cart.dart';
import 'package:baked_bliss/features/cart/domain/usecases/get_cart.dart';
import 'package:baked_bliss/features/cart/domain/usecases/remove_from_cart.dart';
import 'package:baked_bliss/features/cart/domain/usecases/update_cart.dart';

class CartController extends GetxController {
  final AddToCartUseCase _addToCartUseCase;
  final RemoveFromCartUseCase _removeFromCartUseCase;
  final GetCartUseCase _getCartUseCase;
  final UpdateCartUseCase _updateCartUseCase;
  final UserController _userController;
  final GetCartCountUseCase _getCartCountUseCase;
  CartController(
    this._addToCartUseCase,
    this._removeFromCartUseCase,
    this._getCartUseCase,
    this._updateCartUseCase,
    this._userController,
    this._getCartCountUseCase,
  );

  final cartProduct = <CartProductModel>[].obs;
  final total = 0.0.obs;
  void addToCart(CartProductModel product) {}
  Future<void> removeFromCart(CartProductModel product) async {}
  Future<void> clearCart() async {}
  void updateQuantity(CartProductModel product, int quantity) {}
  Future<void> getCart() async {}
}
