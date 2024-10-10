// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartProductModel _$CartProductModelFromJson(Map<String, dynamic> json) {
  return _CartProductModel.fromJson(json);
}

/// @nodoc
mixin _$CartProductModel {
  String get cartId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  DateTime get addedAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  VariationModel get variation => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

  /// Serializes this CartProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductModelCopyWith<CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductModelCopyWith<$Res> {
  factory $CartProductModelCopyWith(
          CartProductModel value, $Res Function(CartProductModel) then) =
      _$CartProductModelCopyWithImpl<$Res, CartProductModel>;
  @useResult
  $Res call(
      {String cartId,
      int quantity,
      bool isAvailable,
      DateTime addedAt,
      DateTime updatedAt,
      double deliveryCharge,
      double totalPrice,
      VariationModel variation,
      ProductModel product});

  $VariationModelCopyWith<$Res> get variation;
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$CartProductModelCopyWithImpl<$Res, $Val extends CartProductModel>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? quantity = null,
    Object? isAvailable = null,
    Object? addedAt = null,
    Object? updatedAt = null,
    Object? deliveryCharge = null,
    Object? totalPrice = null,
    Object? variation = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as VariationModel,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VariationModelCopyWith<$Res> get variation {
    return $VariationModelCopyWith<$Res>(_value.variation, (value) {
      return _then(_value.copyWith(variation: value) as $Val);
    });
  }

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductModelImplCopyWith<$Res>
    implements $CartProductModelCopyWith<$Res> {
  factory _$$CartProductModelImplCopyWith(_$CartProductModelImpl value,
          $Res Function(_$CartProductModelImpl) then) =
      __$$CartProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cartId,
      int quantity,
      bool isAvailable,
      DateTime addedAt,
      DateTime updatedAt,
      double deliveryCharge,
      double totalPrice,
      VariationModel variation,
      ProductModel product});

  @override
  $VariationModelCopyWith<$Res> get variation;
  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$CartProductModelImplCopyWithImpl<$Res>
    extends _$CartProductModelCopyWithImpl<$Res, _$CartProductModelImpl>
    implements _$$CartProductModelImplCopyWith<$Res> {
  __$$CartProductModelImplCopyWithImpl(_$CartProductModelImpl _value,
      $Res Function(_$CartProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? quantity = null,
    Object? isAvailable = null,
    Object? addedAt = null,
    Object? updatedAt = null,
    Object? deliveryCharge = null,
    Object? totalPrice = null,
    Object? variation = null,
    Object? product = null,
  }) {
    return _then(_$CartProductModelImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      variation: null == variation
          ? _value.variation
          : variation // ignore: cast_nullable_to_non_nullable
              as VariationModel,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductModelImpl implements _CartProductModel {
  _$CartProductModelImpl(
      {required this.cartId,
      required this.quantity,
      required this.isAvailable,
      required this.addedAt,
      required this.updatedAt,
      required this.deliveryCharge,
      required this.totalPrice,
      required this.variation,
      required this.product});

  factory _$CartProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductModelImplFromJson(json);

  @override
  final String cartId;
  @override
  final int quantity;
  @override
  final bool isAvailable;
  @override
  final DateTime addedAt;
  @override
  final DateTime updatedAt;
  @override
  final double deliveryCharge;
  @override
  final double totalPrice;
  @override
  final VariationModel variation;
  @override
  final ProductModel product;

  @override
  String toString() {
    return 'CartProductModel(cartId: $cartId, quantity: $quantity, isAvailable: $isAvailable, addedAt: $addedAt, updatedAt: $updatedAt, deliveryCharge: $deliveryCharge, totalPrice: $totalPrice, variation: $variation, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductModelImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.variation, variation) ||
                other.variation == variation) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cartId, quantity, isAvailable,
      addedAt, updatedAt, deliveryCharge, totalPrice, variation, product);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      __$$CartProductModelImplCopyWithImpl<_$CartProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductModelImplToJson(
      this,
    );
  }
}

abstract class _CartProductModel implements CartProductModel {
  factory _CartProductModel(
      {required final String cartId,
      required final int quantity,
      required final bool isAvailable,
      required final DateTime addedAt,
      required final DateTime updatedAt,
      required final double deliveryCharge,
      required final double totalPrice,
      required final VariationModel variation,
      required final ProductModel product}) = _$CartProductModelImpl;

  factory _CartProductModel.fromJson(Map<String, dynamic> json) =
      _$CartProductModelImpl.fromJson;

  @override
  String get cartId;
  @override
  int get quantity;
  @override
  bool get isAvailable;
  @override
  DateTime get addedAt;
  @override
  DateTime get updatedAt;
  @override
  double get deliveryCharge;
  @override
  double get totalPrice;
  @override
  VariationModel get variation;
  @override
  ProductModel get product;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
