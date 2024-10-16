import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/model/delivery/delivery_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  factory OrderModel({
    required String orderId,
    required String userId,
    required List<CartProductModel> products,
    required double totalAmount,
    required DeliveryModel deliveryDetails,
    required OrderStatus status,
    required DateTime orderTime,
    required DateTime estimatedDeliveryTime,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}
