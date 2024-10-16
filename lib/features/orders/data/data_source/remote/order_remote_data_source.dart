import 'dart:convert';

import 'package:baked_bliss/common/model/order_product/order_model.dart';
import 'package:baked_bliss/features/orders/data/data_source/order_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

class OrderRemoteDataSource implements OrderDataSource {
  final Client _client;
  final String _baseUrl = 'https://192.268.1.76/api/orders/';
  OrderRemoteDataSource(this._client);

  @override
  Future<void> cancelOrder(OrderModel order, {required String userId}) async {
    return handleApiException(() async {
      final url = p.join(_baseUrl, 'cancel');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(order.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }

  @override
  Future<OrderModel> getOrder(String orderId, {required String userId}) async {
    return handleApiException(() async {
      final url = p.join(_baseUrl, 'get');
      final response =
          await _client.get(Uri.parse('$url/$orderId?userId=$userId'));
      final jsonData = handleApiResponse(response);
      final data = jsonDecode(jsonData);
      return OrderModel.fromJson(data);
    });
  }

  @override
  Future<List<OrderModel>> getOrders({required String userId}) async {
    return handleApiException(() async {
      final url = p.join(_baseUrl, 'get');
      final response = await _client.get(Uri.parse('$url?userId=$userId'));
      final jsonData = handleApiResponse(response);
      final data = jsonDecode(jsonData);
      return List<OrderModel>.from(data.map((x) => OrderModel.fromJson(x)));
    });
  }

  @override
  Future<void> placeOrder(OrderModel order, {required String userId}) async {
    return handleApiException(() async {
      final url = p.join(_baseUrl, 'place');
      final response = await _client.post(
        Uri.parse('$url?userId=$userId'),
        body: jsonEncode(order.toJson()),
        headers: {'Content-Type': 'application/json'},
      );
      handleApiResponse(response);
    });
  }
}
