// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      cartId: json['cartId'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => CartProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      appDiscount: json['appDiscount'] == null
          ? null
          : DiscountModel.fromJson(json['appDiscount'] as Map<String, dynamic>),
      sellerDiscount: json['sellerDiscount'] == null
          ? null
          : DiscountModel.fromJson(
              json['sellerDiscount'] as Map<String, dynamic>),
      deliveryDetails: DeliveryModel.fromJson(
          json['deliveryDetails'] as Map<String, dynamic>),
      deliveryCharge: (json['deliveryCharge'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      subTotal: (json['subTotal'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      grandTotal: (json['grandTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'user': instance.user,
      'items': instance.items,
      'appDiscount': instance.appDiscount,
      'sellerDiscount': instance.sellerDiscount,
      'deliveryDetails': instance.deliveryDetails,
      'deliveryCharge': instance.deliveryCharge,
      'totalPrice': instance.totalPrice,
      'subTotal': instance.subTotal,
      'discount': instance.discount,
      'grandTotal': instance.grandTotal,
    };
