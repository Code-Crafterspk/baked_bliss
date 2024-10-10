import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/common/model/product/variation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_model.freezed.dart';
part 'cart_product_model.g.dart';

@freezed
class CartProductModel with _$CartProductModel {
  factory CartProductModel({
    required String cartId,
    required int quantity,
    required bool isAvailable,
    required DateTime addedAt,
    required DateTime updatedAt,
    required double deliveryCharge,
    required double totalPrice,
    required VariationModel variation,
    required ProductModel product,
  }) = _CartProductModel;

  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);
}
