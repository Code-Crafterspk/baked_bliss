import 'package:baked_bliss/common/model/ingredient/ingredient_model.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/model/product/variation_model.dart';
import 'package:baked_bliss/common/model/promotion/promotion_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String productId,
    required String title,
    String? sku,
    String? discountPercentage,
    List<String>? images,
    required String thumbnail,
    CategoryModel? category,
    int? ratingCount,
    double? itemRatingScore,
    List<double>? ratingScore,
    double? originalPrice,
    bool? discount,
    bool? addedToCart,
    double? displayPrice,
    DateTime? time,
    String? sellerId,
    String? productSells,
    String? currency,
    List<IngredientModel>? ingredient,
    List<VariationModel>? variations,
    String? description,
    String? tagline,
    List<PromotionModel>? promotion,
    bool? isAvailable,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
