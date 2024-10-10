import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_model.freezed.dart';
part 'discount_model.g.dart';

@freezed
class DiscountModel with _$DiscountModel {
  factory DiscountModel({
    required String discountId,
    required String code,
    required double amount,
    required bool isPercentage,
    required double maxDiscount,
    required DateTime expiryDate,
    required DateTime startDate,
    required String description,
  }) = _DiscountModel;

  factory DiscountModel.fromJson(Map<String, dynamic> json) =>
      _$DiscountModelFromJson(json);
}
