// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductModelImpl _$$CartProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProductModelImpl(
      cartId: json['cartId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      isAvailable: json['isAvailable'] as bool,
      addedAt: DateTime.parse(json['addedAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deliveryCharge: (json['deliveryCharge'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      variation:
          VariationModel.fromJson(json['variation'] as Map<String, dynamic>),
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartProductModelImplToJson(
        _$CartProductModelImpl instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'quantity': instance.quantity,
      'isAvailable': instance.isAvailable,
      'addedAt': instance.addedAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deliveryCharge': instance.deliveryCharge,
      'totalPrice': instance.totalPrice,
      'variation': instance.variation,
      'product': instance.product,
    };
