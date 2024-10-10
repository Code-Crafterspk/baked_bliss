// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryModelImpl _$$DeliveryModelImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryModelImpl(
      deliveryId: json['deliveryId'] as String,
      deliveryAddress: AddressModel.fromJson(
          json['deliveryAddress'] as Map<String, dynamic>),
      deliveryCharge: (json['deliveryCharge'] as num).toDouble(),
      estimatedDeliveryTime:
          DateTime.parse(json['estimatedDeliveryTime'] as String),
    );

Map<String, dynamic> _$$DeliveryModelImplToJson(_$DeliveryModelImpl instance) =>
    <String, dynamic>{
      'deliveryId': instance.deliveryId,
      'deliveryAddress': instance.deliveryAddress,
      'deliveryCharge': instance.deliveryCharge,
      'estimatedDeliveryTime': instance.estimatedDeliveryTime.toIso8601String(),
    };
