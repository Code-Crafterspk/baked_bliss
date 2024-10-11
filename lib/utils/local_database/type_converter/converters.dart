import 'dart:convert';

import 'package:baked_bliss/common/model/cart/cart_product_model.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/model/delivery/delivery_model.dart';
import 'package:baked_bliss/common/model/ingredient/ingredient_model.dart';
import 'package:baked_bliss/common/model/product/variation_model.dart';
import 'package:baked_bliss/common/model/promotion/promotion_model.dart';
import 'package:drift/drift.dart';

class ListOfStringConverter extends TypeConverter<List<String>, String> {
  const ListOfStringConverter();

  @override
  List<String> fromSql(String fromDb) {
    return jsonDecode(fromDb).cast<String>();
  }

  @override
  String toSql(List<String> value) {
    return jsonEncode(value);
  }
}

class ListOfIngredientConverter
    extends TypeConverter<List<IngredientModel>, String> {
  const ListOfIngredientConverter();

  @override
  List<IngredientModel> fromSql(String fromDb) {
    return jsonDecode(fromDb).map((e) => IngredientModel.fromJson(e)).toList();
  }

  @override
  String toSql(List<IngredientModel> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class ListOfPromotionConverter
    extends TypeConverter<List<PromotionModel>, String> {
  const ListOfPromotionConverter();

  @override
  List<PromotionModel> fromSql(String fromDb) {
    return jsonDecode(fromDb).map((e) => PromotionModel.fromJson(e)).toList();
  }

  @override
  String toSql(List<PromotionModel> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class ListOfCategoryConverter
    extends TypeConverter<List<CategoryModel>, String> {
  const ListOfCategoryConverter();

  @override
  List<CategoryModel> fromSql(String fromDb) {
    return jsonDecode(fromDb).map((e) => CategoryModel.fromJson(e)).toList();
  }

  @override
  String toSql(List<CategoryModel> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class CatelogConverter extends TypeConverter<Map<String, List<int>>, String> {
  const CatelogConverter();
  @override
  Map<String, List<int>> fromSql(String fromDb) {
    return jsonDecode(fromDb);
  }

  @override
  String toSql(Map<String, List<int>> value) {
    return jsonEncode(value);
  }
}

class ListOfVariationConverter
    extends TypeConverter<List<VariationModel>, String> {
  const ListOfVariationConverter();

  @override
  List<VariationModel> fromSql(String fromDb) {
    return jsonDecode(fromDb)
        .map<VariationModel>((e) => VariationModel.fromJson(e))
        .toList();
  }

  @override
  String toSql(List<VariationModel> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class VariationConverter extends TypeConverter<VariationModel, String> {
  const VariationConverter();

  @override
  VariationModel fromSql(String fromDb) {
    return VariationModel.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(VariationModel value) {
    return jsonEncode(value.toJson());
  }
}

class CartProductToCartIdConverter
    extends TypeConverter<List<CartProductModel>, String> {
  const CartProductToCartIdConverter();

  @override
  List<CartProductModel> fromSql(String fromDb) {
    return jsonDecode(fromDb)
        .map<CartProductModel>((e) => CartProductModel.fromJson(e))
        .toList();
  }

  @override
  String toSql(List<CartProductModel> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class DeliveryConverter extends TypeConverter<DeliveryModel, String> {
  const DeliveryConverter();

  @override
  DeliveryModel fromSql(String fromDb) {
    return DeliveryModel.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(DeliveryModel value) {
    return jsonEncode(value.toJson());
  }
}
