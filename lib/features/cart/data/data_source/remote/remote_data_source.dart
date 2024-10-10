import 'dart:convert';

import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/model/cart/cart_model.dart';
import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/features/cart/data/data_source/cart_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

class CartRemoteDataSourceImp implements CartDataSource {
  final FirebaseAuth _auth;
  final Client _client;
  final baseUrl = 'https://192.168.1.76/api/cart/';

  CartRemoteDataSourceImp({required FirebaseAuth auth, required Client client})
      : _auth = auth,
        _client = client;

  @override
  Future<void> addProductToCart(CartProductModel cartProduct,
      {required String userId}) async {
    handleApiException(() async {
      final user = _auth.currentUser;
      if (user == null) {
        throw ServerException(
            errorCode: 'user_not_found', message: 'User not found');
      }
      final url = p.join(baseUrl, 'add');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(cartProduct.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<CartModel> getCart(String userId) async {
    return handleApiException(() async {
      final user = _auth.currentUser;
      if (user == null) {
        throw ServerException(
            errorCode: 'user-not-found', message: 'User not found');
      }
      final url = p.join(baseUrl, 'cart/get');
      final response = await _client.get(
        Uri.parse('$url?userId=$userId'),
        headers: {'Content-Type': 'application/json'},
      );
      final data = jsonDecode(response.body);
      return CartModel.fromJson(jsonDecode(data));
    });
  }

  @override
  Future<void> removeProductFromCart(CartProductModel cartProduct,
      {required String userId}) async {
    handleApiException(() async {
      final user = _auth.currentUser;
      if (user == null) {
        throw ServerException(
            errorCode: 'user-not-found', message: 'User not found');
      }
      final url = p.join(baseUrl, 'cart/remove');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(cartProduct.toJson()),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${await user.getIdToken()}',
        },
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<void> updateProductInCart(CartProductModel cartProduct,
      {required String userId}) async {
    handleApiException(() async {
      final user = _auth.currentUser;
      if (user == null) {
        throw ServerException(
            errorCode: 'user-not-found', message: 'User not found');
      }
      final url = p.join(baseUrl, 'cart/update');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(cartProduct.toJson()),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${await user.getIdToken()}',
        },
      );
      handleApiResponse(response);
    });
  }
}
