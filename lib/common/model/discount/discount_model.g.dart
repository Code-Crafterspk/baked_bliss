// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiscountModelImpl _$$DiscountModelImplFromJson(Map<String, dynamic> json) =>
    _$DiscountModelImpl(
      discountId: json['discountId'] as String,
      code: json['code'] as String,
      amount: (json['amount'] as num).toDouble(),
      isPercentage: json['isPercentage'] as bool,
      maxDiscount: (json['maxDiscount'] as num).toDouble(),
      expiryDate: DateTime.parse(json['expiryDate'] as String),
      startDate: DateTime.parse(json['startDate'] as String),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DiscountModelImplToJson(_$DiscountModelImpl instance) =>
    <String, dynamic>{
      'discountId': instance.discountId,
      'code': instance.code,
      'amount': instance.amount,
      'isPercentage': instance.isPercentage,
      'maxDiscount': instance.maxDiscount,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'startDate': instance.startDate.toIso8601String(),
      'description': instance.description,
    };
