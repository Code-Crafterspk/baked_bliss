import 'package:freezed_annotation/freezed_annotation.dart';

part 'variation_model.freezed.dart';
part 'variation_model.g.dart';

@freezed
class VariationModel with _$VariationModel {
  const factory VariationModel({
    required String variationId,
    required String name,
    required double price,
    required bool isAvailable,
  }) = _VariationModel;

  factory VariationModel.fromJson(Map<String, dynamic> json) =>
      _$VariationModelFromJson(json);
}
