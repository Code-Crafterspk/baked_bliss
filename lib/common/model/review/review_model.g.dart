// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      reviewId: json['reviewId'] as String,
      userId: json['userId'] as String,
      productId: json['productId'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String,
      reviewDate: DateTime.parse(json['reviewDate'] as String),
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => ReplyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'reviewId': instance.reviewId,
      'userId': instance.userId,
      'productId': instance.productId,
      'rating': instance.rating,
      'comment': instance.comment,
      'reviewDate': instance.reviewDate.toIso8601String(),
      'replies': instance.replies,
    };
