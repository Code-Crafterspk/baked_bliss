import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/cart/cart_model.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class CartRepository {
  Future<Either<Failure, CartModel>> getCart(String userId);
  Future<Either<Failure, void>> addProductToCart(CartProductModel cartProduct,
      {required String userId});
  Future<Either<Failure, void>> removeProductFromCart(
      CartProductModel cartProduct,
      {required String userId});
  Future<Either<Failure, void>> updateProductInCart(
      CartProductModel cartProduct,
      {required String userId});
}
