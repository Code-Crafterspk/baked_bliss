import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/common/model/promotion/promotion_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
class RestaurantModel with _$RestaurantModel {
  factory RestaurantModel({
    required String restaurantId,
    required String name,
    required String address,
    required String phoneNumber,
    required List<ProductModel> menu,
    required List<PromotionModel> promotions,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);
}
