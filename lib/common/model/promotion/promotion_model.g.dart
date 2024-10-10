// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionModelImpl _$$PromotionModelImplFromJson(Map<String, dynamic> json) =>
    _$PromotionModelImpl(
      promotionId: (json['promotionId'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      discount: (json['discount'] as num).toDouble(),
      code: json['code'] as String,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      page: json['page'] as String?,
    );

Map<String, dynamic> _$$PromotionModelImplToJson(
        _$PromotionModelImpl instance) =>
    <String, dynamic>{
      'promotionId': instance.promotionId,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'discount': instance.discount,
      'code': instance.code,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'page': instance.page,
    };
