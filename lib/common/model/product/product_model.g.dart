// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      productId: json['productId'] as String,
      title: json['title'] as String,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      thumbnail: json['thumbnail'] as String,
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      rating: (json['rating'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      ingredient: (json['ingredient'] as List<dynamic>?)
          ?.map((e) => IngredientModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>?)
          ?.map((e) => VariationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      tagline: json['tagline'] as String?,
      salePrice: (json['salePrice'] as num?)?.toDouble(),
      promotion: (json['promotion'] as List<dynamic>?)
          ?.map((e) => PromotionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isAvailable: json['isAvailable'] as bool?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'title': instance.title,
      'images': instance.images,
      'thumbnail': instance.thumbnail,
      'category': instance.category,
      'ratingCount': instance.ratingCount,
      'rating': instance.rating,
      'price': instance.price,
      'ingredient': instance.ingredient,
      'variations': instance.variations,
      'description': instance.description,
      'tagline': instance.tagline,
      'salePrice': instance.salePrice,
      'promotion': instance.promotion,
      'isAvailable': instance.isAvailable,
    };
