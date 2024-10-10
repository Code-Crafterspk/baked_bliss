import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotion_model.freezed.dart';
part 'promotion_model.g.dart';

@freezed
class PromotionModel with _$PromotionModel {
  const factory PromotionModel({
    required int promotionId,
    required String title,
    required String description,
    required String image,
    required double discount,
    required String code,
    required DateTime startDate,
    required DateTime endDate,
    String? page,
  }) = _PromotionModel;

  factory PromotionModel.fromJson(Map<String, dynamic> json) =>
      _$PromotionModelFromJson(json);
}
