import 'package:baked_bliss/common/model/reply/reply_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required String avatar,
    required String boughtDate,
    required int buyerId,
    required String buyerName,
    required bool canEdit,
    required String configSku,
    required List<String> images,
    required bool isBuyerShowEnabled,
    required String productId,
    required String productImg,
    required String productName,
    required List<String> mediaImg,
    required int rating,
    required List<dynamic> replies,
    required String reviewContent,
    required int reviewId,
    required String reviewStatus,
    required DateTime reviewTime,
    required int sellerId,
    required bool showUploader,
    required String skuId,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
