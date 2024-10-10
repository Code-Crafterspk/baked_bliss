import 'package:baked_bliss/common/model/cart/cart_model.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';

abstract interface class CartDataSource {
  Future<CartModel> getCart(String userId);
  Future<void> addProductToCart(CartProductModel cartProduct,
      {required String userId});
  Future<void> removeProductFromCart(CartProductModel cartProduct,
      {required String userId});
  Future<void> updateProductInCart(CartProductModel cartProduct,
      {required String userId});
}
