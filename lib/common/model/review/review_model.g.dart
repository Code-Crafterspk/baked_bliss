// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewModelImpl _$$ReviewModelImplFromJson(Map<String, dynamic> json) =>
    _$ReviewModelImpl(
      avatar: json['avatar'] as String,
      boughtDate: json['boughtDate'] as String,
      buyerId: (json['buyerId'] as num).toInt(),
      buyerName: json['buyerName'] as String,
      canEdit: json['canEdit'] as bool,
      configSku: json['configSku'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      isBuyerShowEnabled: json['isBuyerShowEnabled'] as bool,
      productId: json['productId'] as String,
      productImg: json['productImg'] as String,
      productName: json['productName'] as String,
      mediaImg:
          (json['mediaImg'] as List<dynamic>).map((e) => e as String).toList(),
      rating: (json['rating'] as num).toInt(),
      replies: json['replies'] as List<dynamic>,
      reviewContent: json['reviewContent'] as String,
      reviewId: (json['reviewId'] as num).toInt(),
      reviewStatus: json['reviewStatus'] as String,
      reviewTime: DateTime.parse(json['reviewTime'] as String),
      sellerId: (json['sellerId'] as num).toInt(),
      showUploader: json['showUploader'] as bool,
      skuId: json['skuId'] as String,
    );

Map<String, dynamic> _$$ReviewModelImplToJson(_$ReviewModelImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'boughtDate': instance.boughtDate,
      'buyerId': instance.buyerId,
      'buyerName': instance.buyerName,
      'canEdit': instance.canEdit,
      'configSku': instance.configSku,
      'images': instance.images,
      'isBuyerShowEnabled': instance.isBuyerShowEnabled,
      'productId': instance.productId,
      'productImg': instance.productImg,
      'productName': instance.productName,
      'mediaImg': instance.mediaImg,
      'rating': instance.rating,
      'replies': instance.replies,
      'reviewContent': instance.reviewContent,
      'reviewId': instance.reviewId,
      'reviewStatus': instance.reviewStatus,
      'reviewTime': instance.reviewTime.toIso8601String(),
      'sellerId': instance.sellerId,
      'showUploader': instance.showUploader,
      'skuId': instance.skuId,
    };
