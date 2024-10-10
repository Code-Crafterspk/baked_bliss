// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get productId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  List<IngredientModel>? get ingredient => throw _privateConstructorUsedError;
  List<VariationModel>? get variations => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  double? get salePrice => throw _privateConstructorUsedError;
  List<PromotionModel>? get promotion => throw _privateConstructorUsedError;
  bool? get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {String productId,
      String title,
      List<String>? images,
      String thumbnail,
      CategoryModel? category,
      int? ratingCount,
      double rating,
      double price,
      List<IngredientModel>? ingredient,
      List<VariationModel>? variations,
      String? description,
      String? tagline,
      double? salePrice,
      List<PromotionModel>? promotion,
      bool? isAvailable});

  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? images = freezed,
    Object? thumbnail = null,
    Object? category = freezed,
    Object? ratingCount = freezed,
    Object? rating = null,
    Object? price = null,
    Object? ingredient = freezed,
    Object? variations = freezed,
    Object? description = freezed,
    Object? tagline = freezed,
    Object? salePrice = freezed,
    Object? promotion = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
      variations: freezed == variations
          ? _value.variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<VariationModel>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      promotion: freezed == promotion
          ? _value.promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as List<PromotionModel>?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String title,
      List<String>? images,
      String thumbnail,
      CategoryModel? category,
      int? ratingCount,
      double rating,
      double price,
      List<IngredientModel>? ingredient,
      List<VariationModel>? variations,
      String? description,
      String? tagline,
      double? salePrice,
      List<PromotionModel>? promotion,
      bool? isAvailable});

  @override
  $CategoryModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? title = null,
    Object? images = freezed,
    Object? thumbnail = null,
    Object? category = freezed,
    Object? ratingCount = freezed,
    Object? rating = null,
    Object? price = null,
    Object? ingredient = freezed,
    Object? variations = freezed,
    Object? description = freezed,
    Object? tagline = freezed,
    Object? salePrice = freezed,
    Object? promotion = freezed,
    Object? isAvailable = freezed,
  }) {
    return _then(_$ProductModelImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      ratingCount: freezed == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      ingredient: freezed == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<IngredientModel>?,
      variations: freezed == variations
          ? _value._variations
          : variations // ignore: cast_nullable_to_non_nullable
              as List<VariationModel>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: freezed == tagline
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      salePrice: freezed == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      promotion: freezed == promotion
          ? _value._promotion
          : promotion // ignore: cast_nullable_to_non_nullable
              as List<PromotionModel>?,
      isAvailable: freezed == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.productId,
      required this.title,
      final List<String>? images,
      required this.thumbnail,
      this.category,
      this.ratingCount,
      required this.rating,
      required this.price,
      final List<IngredientModel>? ingredient,
      final List<VariationModel>? variations,
      this.description,
      this.tagline,
      this.salePrice,
      final List<PromotionModel>? promotion,
      this.isAvailable})
      : _images = images,
        _ingredient = ingredient,
        _variations = variations,
        _promotion = promotion;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String productId;
  @override
  final String title;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String thumbnail;
  @override
  final CategoryModel? category;
  @override
  final int? ratingCount;
  @override
  final double rating;
  @override
  final double price;
  final List<IngredientModel>? _ingredient;
  @override
  List<IngredientModel>? get ingredient {
    final value = _ingredient;
    if (value == null) return null;
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VariationModel>? _variations;
  @override
  List<VariationModel>? get variations {
    final value = _variations;
    if (value == null) return null;
    if (_variations is EqualUnmodifiableListView) return _variations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final String? tagline;
  @override
  final double? salePrice;
  final List<PromotionModel>? _promotion;
  @override
  List<PromotionModel>? get promotion {
    final value = _promotion;
    if (value == null) return null;
    if (_promotion is EqualUnmodifiableListView) return _promotion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isAvailable;

  @override
  String toString() {
    return 'ProductModel(productId: $productId, title: $title, images: $images, thumbnail: $thumbnail, category: $category, ratingCount: $ratingCount, rating: $rating, price: $price, ingredient: $ingredient, variations: $variations, description: $description, tagline: $tagline, salePrice: $salePrice, promotion: $promotion, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality()
                .equals(other._variations, _variations) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            const DeepCollectionEquality()
                .equals(other._promotion, _promotion) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      title,
      const DeepCollectionEquality().hash(_images),
      thumbnail,
      category,
      ratingCount,
      rating,
      price,
      const DeepCollectionEquality().hash(_ingredient),
      const DeepCollectionEquality().hash(_variations),
      description,
      tagline,
      salePrice,
      const DeepCollectionEquality().hash(_promotion),
      isAvailable);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final String productId,
      required final String title,
      final List<String>? images,
      required final String thumbnail,
      final CategoryModel? category,
      final int? ratingCount,
      required final double rating,
      required final double price,
      final List<IngredientModel>? ingredient,
      final List<VariationModel>? variations,
      final String? description,
      final String? tagline,
      final double? salePrice,
      final List<PromotionModel>? promotion,
      final bool? isAvailable}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get productId;
  @override
  String get title;
  @override
  List<String>? get images;
  @override
  String get thumbnail;
  @override
  CategoryModel? get category;
  @override
  int? get ratingCount;
  @override
  double get rating;
  @override
  double get price;
  @override
  List<IngredientModel>? get ingredient;
  @override
  List<VariationModel>? get variations;
  @override
  String? get description;
  @override
  String? get tagline;
  @override
  double? get salePrice;
  @override
  List<PromotionModel>? get promotion;
  @override
  bool? get isAvailable;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
