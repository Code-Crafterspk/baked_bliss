import 'package:baked_bliss/common/model/delivery/delivery_model.dart';
import 'package:baked_bliss/common/model/discount/discount_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_product_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  factory CartModel({
    required String cartId,
    required UserModel user,
    required List<CartProductModel> items,
    DiscountModel? appDiscount,
    DiscountModel? sellerDiscount,
    required DeliveryModel deliveryDetails,
    required double deliveryCharge,
    required double totalPrice,
    required double subTotal,
    required double discount,
    required double grandTotal,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
