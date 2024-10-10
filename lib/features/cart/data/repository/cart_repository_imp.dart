import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/cart/cart_model.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/features/cart/data/data_source/local/local_data_source.dart';
import 'package:baked_bliss/features/cart/data/data_source/remote/remote_data_source.dart';
import 'package:baked_bliss/features/cart/domain/repository/cart_repository.dart';
import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:fpdart/fpdart.dart';

class CartRepositoryImp implements CartRepository {
  final CartRemoteDataSourceImp _remoteDataSource;
  final NetworkInfo _networkInfo;
  final CartLocalDataSourceImp _localDataSource;

  CartRepositoryImp(
      this._remoteDataSource, this._networkInfo, this._localDataSource);

  @override
  Future<Either<Failure, void>> addProductToCart(CartProductModel cartProduct,
      {required String userId}) async {
    try {
      if (!_networkInfo.isConnected) {
        return left(Failure(message: 'No internet connection'));
      }
      await _remoteDataSource.addProductToCart(cartProduct, userId: userId);
      await _localDataSource.addProductToCart(cartProduct, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, CartModel>> getCart(String userId) async {
    try {
      if (!_networkInfo.isConnected) {
        final cart = await _localDataSource.getCart(userId);
        return right(cart);
      }
      final cart = await _remoteDataSource.getCart(userId);
      await _localDataSource.addCart(cart, userId: userId);
      return right(cart);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> removeProductFromCart(
      CartProductModel cartProduct,
      {required String userId}) async {
    try {
      if (!_networkInfo.isConnected) {
        return left(Failure(message: 'No internet connection'));
      }
      await _remoteDataSource.removeProductFromCart(cartProduct,
          userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> updateProductInCart(
      CartProductModel cartProduct,
      {required String userId}) async {
    try {
      if (!_networkInfo.isConnected) {
        return left(Failure(message: 'No internet connection'));
      }
      await _remoteDataSource.updateProductInCart(cartProduct, userId: userId);
      await _localDataSource.updateProductInCart(cartProduct, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
