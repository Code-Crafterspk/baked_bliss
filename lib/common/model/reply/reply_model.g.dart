// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReplyModelImpl _$$ReplyModelImplFromJson(Map<String, dynamic> json) =>
    _$ReplyModelImpl(
      replyId: json['replyId'] as String,
      reviewerId: json['reviewerId'] as String,
      content: json['content'] as String,
      isFromSeller: json['isFromSeller'] as bool,
      replyDate: DateTime.parse(json['replyDate'] as String),
    );

Map<String, dynamic> _$$ReplyModelImplToJson(_$ReplyModelImpl instance) =>
    <String, dynamic>{
      'replyId': instance.replyId,
      'reviewerId': instance.reviewerId,
      'content': instance.content,
      'isFromSeller': instance.isFromSeller,
      'replyDate': instance.replyDate.toIso8601String(),
    };
