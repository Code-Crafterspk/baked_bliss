import 'package:freezed_annotation/freezed_annotation.dart';
part 'ingredient_model.freezed.dart';
part 'ingredient_model.g.dart';

@freezed
class IngredientModel with _$IngredientModel {
  const factory IngredientModel({
    required int id,
    required String name,
    required String quantity,
    required String image,
  }) = _Ingredient;

  factory IngredientModel.fromJson(Map<String, dynamic> json) =>
      _$IngredientModelFromJson(json);
}
