// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      productId: json['productId'] as String,
      title: json['title'] as String,
      sku: json['sku'] as String?,
      discountPercentage: json['discountPercentage'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      itemRatingScore: (json['itemRatingScore'] as num?)?.toDouble(),
      ratingScore: (json['ratingScore'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      originalPrice: (json['originalPrice'] as num?)?.toDouble(),
      discount: json['discount'] as bool?,
      addedToCart: json['addedToCart'] as bool?,
      displayPrice: (json['displayPrice'] as num?)?.toDouble(),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      sellerId: json['sellerId'] as String?,
      productSells: json['productSells'] as String?,
      currency: json['currency'] as String?,
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => VariationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      tagline: json['tagline'] as String?,
      promotion: (json['promotion'] as List<dynamic>?)
          ?.map((e) => PromotionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'sku': instance.sku,
      'discountPercentage': instance.discountPercentage,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
      'category': instance.category,
      'ratingCount': instance.ratingCount,
      'itemRatingScore': instance.itemRatingScore,
      'ratingScore': instance.ratingScore,
      'originalPrice': instance.originalPrice,
      'discount': instance.discount,
      'addedToCart': instance.addedToCart,
      'displayPrice': instance.displayPrice,
      'time': instance.time?.toIso8601String(),
      'sellerId': instance.sellerId,
      'productSells': instance.productSells,
      'currency': instance.currency,
      'ingredient': instance.ingredient,
      'variations': instance.variations,
      'description': instance.description,
      'tagline': instance.tagline,
      'promotion': instance.promotion,
      'isAvailable': instance.isAvailable,
    };
