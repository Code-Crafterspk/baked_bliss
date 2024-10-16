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
  String? get sku => throw _privateConstructorUsedError;
  String? get discountPercentage => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  int? get ratingCount => throw _privateConstructorUsedError;
  double? get itemRatingScore => throw _privateConstructorUsedError;
  List<double>? get ratingScore => throw _privateConstructorUsedError;
  double? get originalPrice => throw _privateConstructorUsedError;
  bool? get discount => throw _privateConstructorUsedError;
  bool? get addedToCart => throw _privateConstructorUsedError;
  double? get displayPrice => throw _privateConstructorUsedError;
  DateTime? get time => throw _privateConstructorUsedError;
  String? get sellerId => throw _privateConstructorUsedError;
  String? get productSells => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  List<IngredientModel>? get ingredient => throw _privateConstructorUsedError;
  List<VariationModel>? get variations => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
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
      String? sku,
      String? discountPercentage,
      List<String>? images,
      String thumbnail,
      CategoryModel? category,
      int? ratingCount,
      double? itemRatingScore,
      List<double>? ratingScore,
      double? originalPrice,
      bool? discount,
      bool? addedToCart,
      double? displayPrice,
      DateTime? time,
      String? sellerId,
      String? productSells,
      String? currency,
      List<IngredientModel>? ingredient,
      List<VariationModel>? variations,
      String? description,
      String? tagline,
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
    Object? sku = freezed,
    Object? discountPercentage = freezed,
    Object? images = freezed,
    Object? thumbnail = null,
    Object? category = freezed,
    Object? ratingCount = freezed,
    Object? itemRatingScore = freezed,
    Object? ratingScore = freezed,
    Object? originalPrice = freezed,
    Object? discount = freezed,
    Object? addedToCart = freezed,
    Object? displayPrice = freezed,
    Object? time = freezed,
    Object? sellerId = freezed,
    Object? productSells = freezed,
    Object? currency = freezed,
    Object? ingredient = freezed,
    Object? variations = freezed,
    Object? description = freezed,
    Object? tagline = freezed,
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
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      itemRatingScore: freezed == itemRatingScore
          ? _value.itemRatingScore
          : itemRatingScore // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingScore: freezed == ratingScore
          ? _value.ratingScore
          : ratingScore // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedToCart: freezed == addedToCart
          ? _value.addedToCart
          : addedToCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayPrice: freezed == displayPrice
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String?,
      productSells: freezed == productSells
          ? _value.productSells
          : productSells // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? sku,
      String? discountPercentage,
      List<String>? images,
      String thumbnail,
      CategoryModel? category,
      int? ratingCount,
      double? itemRatingScore,
      List<double>? ratingScore,
      double? originalPrice,
      bool? discount,
      bool? addedToCart,
      double? displayPrice,
      DateTime? time,
      String? sellerId,
      String? productSells,
      String? currency,
      List<IngredientModel>? ingredient,
      List<VariationModel>? variations,
      String? description,
      String? tagline,
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
    Object? sku = freezed,
    Object? discountPercentage = freezed,
    Object? images = freezed,
    Object? thumbnail = null,
    Object? category = freezed,
    Object? ratingCount = freezed,
    Object? itemRatingScore = freezed,
    Object? ratingScore = freezed,
    Object? originalPrice = freezed,
    Object? discount = freezed,
    Object? addedToCart = freezed,
    Object? displayPrice = freezed,
    Object? time = freezed,
    Object? sellerId = freezed,
    Object? productSells = freezed,
    Object? currency = freezed,
    Object? ingredient = freezed,
    Object? variations = freezed,
    Object? description = freezed,
    Object? tagline = freezed,
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
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      itemRatingScore: freezed == itemRatingScore
          ? _value.itemRatingScore
          : itemRatingScore // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingScore: freezed == ratingScore
          ? _value._ratingScore
          : ratingScore // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      originalPrice: freezed == originalPrice
          ? _value.originalPrice
          : originalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as bool?,
      addedToCart: freezed == addedToCart
          ? _value.addedToCart
          : addedToCart // ignore: cast_nullable_to_non_nullable
              as bool?,
      displayPrice: freezed == displayPrice
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String?,
      productSells: freezed == productSells
          ? _value.productSells
          : productSells // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.sku,
      this.discountPercentage,
      final List<String>? images,
      required this.thumbnail,
      this.category,
      this.ratingCount,
      this.itemRatingScore,
      final List<double>? ratingScore,
      this.originalPrice,
      this.discount,
      this.addedToCart,
      this.displayPrice,
      this.time,
      this.sellerId,
      this.productSells,
      this.currency,
      final List<IngredientModel>? ingredient,
      final List<VariationModel>? variations,
      this.description,
      this.tagline,
      final List<PromotionModel>? promotion,
      this.isAvailable})
      : _images = images,
        _ratingScore = ratingScore,
        _ingredient = ingredient,
        _variations = variations,
        _promotion = promotion;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String productId;
  @override
  final String title;
  @override
  final String? sku;
  @override
  final String? discountPercentage;
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
  final double? itemRatingScore;
  final List<double>? _ratingScore;
  @override
  List<double>? get ratingScore {
    final value = _ratingScore;
    if (value == null) return null;
    if (_ratingScore is EqualUnmodifiableListView) return _ratingScore;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? originalPrice;
  @override
  final bool? discount;
  @override
  final bool? addedToCart;
  @override
  final double? displayPrice;
  @override
  final DateTime? time;
  @override
  final String? sellerId;
  @override
  final String? productSells;
  @override
  final String? currency;
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
    return 'ProductModel(productId: $productId, title: $title, sku: $sku, discountPercentage: $discountPercentage, images: $images, thumbnail: $thumbnail, category: $category, ratingCount: $ratingCount, itemRatingScore: $itemRatingScore, ratingScore: $ratingScore, originalPrice: $originalPrice, discount: $discount, addedToCart: $addedToCart, displayPrice: $displayPrice, time: $time, sellerId: $sellerId, productSells: $productSells, currency: $currency, ingredient: $ingredient, variations: $variations, description: $description, tagline: $tagline, promotion: $promotion, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.itemRatingScore, itemRatingScore) ||
                other.itemRatingScore == itemRatingScore) &&
            const DeepCollectionEquality()
                .equals(other._ratingScore, _ratingScore) &&
            (identical(other.originalPrice, originalPrice) ||
                other.originalPrice == originalPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.addedToCart, addedToCart) ||
                other.addedToCart == addedToCart) &&
            (identical(other.displayPrice, displayPrice) ||
                other.displayPrice == displayPrice) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.productSells, productSells) ||
                other.productSells == productSells) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality()
                .equals(other._variations, _variations) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.tagline, tagline) || other.tagline == tagline) &&
            const DeepCollectionEquality()
                .equals(other._promotion, _promotion) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        productId,
        title,
        sku,
        discountPercentage,
        const DeepCollectionEquality().hash(_images),
        thumbnail,
        category,
        ratingCount,
        itemRatingScore,
        const DeepCollectionEquality().hash(_ratingScore),
        originalPrice,
        discount,
        addedToCart,
        displayPrice,
        time,
        sellerId,
        productSells,
        currency,
        const DeepCollectionEquality().hash(_ingredient),
        const DeepCollectionEquality().hash(_variations),
        description,
        tagline,
        const DeepCollectionEquality().hash(_promotion),
        isAvailable
      ]);

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
      final String? sku,
      final String? discountPercentage,
      final List<String>? images,
      required final String thumbnail,
      final CategoryModel? category,
      final int? ratingCount,
      final double? itemRatingScore,
      final List<double>? ratingScore,
      final double? originalPrice,
      final bool? discount,
      final bool? addedToCart,
      final double? displayPrice,
      final DateTime? time,
      final String? sellerId,
      final String? productSells,
      final String? currency,
      final List<IngredientModel>? ingredient,
      final List<VariationModel>? variations,
      final String? description,
      final String? tagline,
      final List<PromotionModel>? promotion,
      final bool? isAvailable}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get productId;
  @override
  String get title;
  @override
  String? get sku;
  @override
  String? get discountPercentage;
  @override
  List<String>? get images;
  @override
  String get thumbnail;
  @override
  CategoryModel? get category;
  @override
  int? get ratingCount;
  @override
  double? get itemRatingScore;
  @override
  List<double>? get ratingScore;
  @override
  double? get originalPrice;
  @override
  bool? get discount;
  @override
  bool? get addedToCart;
  @override
  double? get displayPrice;
  @override
  DateTime? get time;
  @override
  String? get sellerId;
  @override
  String? get productSells;
  @override
  String? get currency;
  @override
  List<IngredientModel>? get ingredient;
  @override
  List<VariationModel>? get variations;
  @override
  String? get description;
  @override
  String? get tagline;
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
