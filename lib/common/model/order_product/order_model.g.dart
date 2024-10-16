// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      orderId: json['orderId'] as String,
      userId: json['userId'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => CartProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      deliveryDetails: DeliveryModel.fromJson(
          json['deliveryDetails'] as Map<String, dynamic>),
      status: $enumDecode(_$OrderStatusEnumMap, json['status']),
      orderTime: DateTime.parse(json['orderTime'] as String),
      estimatedDeliveryTime:
          DateTime.parse(json['estimatedDeliveryTime'] as String),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'userId': instance.userId,
      'products': instance.products,
      'totalAmount': instance.totalAmount,
      'deliveryDetails': instance.deliveryDetails,
      'status': _$OrderStatusEnumMap[instance.status]!,
      'orderTime': instance.orderTime.toIso8601String(),
      'estimatedDeliveryTime': instance.estimatedDeliveryTime.toIso8601String(),
    };

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'pending',
  OrderStatus.confirmed: 'confirmed',
  OrderStatus.rejected: 'rejected',
  OrderStatus.delivered: 'delivered',
  OrderStatus.cancelled: 'cancelled',
};
