import 'package:baked_bliss/common/model/reply/reply_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  factory ReviewModel({
    required String reviewId,
    required String userId,
    required String productId,
    required int rating,
    required String comment,
    required DateTime reviewDate,
    List<ReplyModel>? replies,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}
