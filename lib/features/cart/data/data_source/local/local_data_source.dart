import 'package:baked_bliss/common/model/cart/cart_model.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/features/cart/data/data_source/cart_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';

class CartLocalDataSourceImp implements CartDataSource {
  final AppDatabase _db;

  CartLocalDataSourceImp({
    required AppDatabase db,
  }) : _db = db;

  @override
  Future<void> addProductToCart(CartProductModel cartProduct,
      {required String userId}) async {}

  Future<void> clearCart(String userId) async {
    await handleLocalDatabaseException(() async {
      await _db.clearCart();
    });
  }

  @override
  Future<CartModel> getCart(String userId) async {
    return await handleLocalDatabaseException(() async {
      final cart = await _db.getCart();
      return cart;
    });
  }

  @override
  Future<void> removeProductFromCart(List<CartProductModel> cartProduct,
      {required String userId}) async {
    await handleLocalDatabaseException(() async {
      await _db.removeProductFromCart(cartProduct);
    });
  }

  @override
  Future<void> updateProductInCart(CartProductModel cartProduct,
      {required String userId}) async {
    await handleLocalDatabaseException(() async {
      await _db.updateCartProduct(cartProduct);
    });
  }

  Future<void> addCart(CartModel cart, {required String userId}) async {
    await handleLocalDatabaseException(() async {
      await _db.addCart(cart);
    });
  }

  @override
  Future<int> getCartCount(String userId) async {
    return await handleLocalDatabaseException(() async {
      final cart = await _db.getCart();
      return cart.items.length;
    });
  }
}
