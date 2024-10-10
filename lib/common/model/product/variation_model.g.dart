// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariationModelImpl _$$VariationModelImplFromJson(Map<String, dynamic> json) =>
    _$VariationModelImpl(
      variationId: json['variationId'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool,
    );

Map<String, dynamic> _$$VariationModelImplToJson(
        _$VariationModelImpl instance) =>
    <String, dynamic>{
      'variationId': instance.variationId,
      'name': instance.name,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
    };
