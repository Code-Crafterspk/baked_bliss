// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  String get cartId => throw _privateConstructorUsedError;
  UserModel get user => throw _privateConstructorUsedError;
  List<CartProductModel> get items => throw _privateConstructorUsedError;
  DiscountModel? get appDiscount => throw _privateConstructorUsedError;
  DiscountModel? get sellerDiscount => throw _privateConstructorUsedError;
  DeliveryModel get deliveryDetails => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;
  double get grandTotal => throw _privateConstructorUsedError;

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call(
      {String cartId,
      UserModel user,
      List<CartProductModel> items,
      DiscountModel? appDiscount,
      DiscountModel? sellerDiscount,
      DeliveryModel deliveryDetails,
      double deliveryCharge,
      double totalPrice,
      double subTotal,
      double discount,
      double grandTotal});

  $UserModelCopyWith<$Res> get user;
  $DiscountModelCopyWith<$Res>? get appDiscount;
  $DiscountModelCopyWith<$Res>? get sellerDiscount;
  $DeliveryModelCopyWith<$Res> get deliveryDetails;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? user = null,
    Object? items = null,
    Object? appDiscount = freezed,
    Object? sellerDiscount = freezed,
    Object? deliveryDetails = null,
    Object? deliveryCharge = null,
    Object? totalPrice = null,
    Object? subTotal = null,
    Object? discount = null,
    Object? grandTotal = null,
  }) {
    return _then(_value.copyWith(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      appDiscount: freezed == appDiscount
          ? _value.appDiscount
          : appDiscount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
      sellerDiscount: freezed == sellerDiscount
          ? _value.sellerDiscount
          : sellerDiscount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
      deliveryDetails: null == deliveryDetails
          ? _value.deliveryDetails
          : deliveryDetails // ignore: cast_nullable_to_non_nullable
              as DeliveryModel,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<$Res>? get appDiscount {
    if (_value.appDiscount == null) {
      return null;
    }

    return $DiscountModelCopyWith<$Res>(_value.appDiscount!, (value) {
      return _then(_value.copyWith(appDiscount: value) as $Val);
    });
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiscountModelCopyWith<$Res>? get sellerDiscount {
    if (_value.sellerDiscount == null) {
      return null;
    }

    return $DiscountModelCopyWith<$Res>(_value.sellerDiscount!, (value) {
      return _then(_value.copyWith(sellerDiscount: value) as $Val);
    });
  }

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryModelCopyWith<$Res> get deliveryDetails {
    return $DeliveryModelCopyWith<$Res>(_value.deliveryDetails, (value) {
      return _then(_value.copyWith(deliveryDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cartId,
      UserModel user,
      List<CartProductModel> items,
      DiscountModel? appDiscount,
      DiscountModel? sellerDiscount,
      DeliveryModel deliveryDetails,
      double deliveryCharge,
      double totalPrice,
      double subTotal,
      double discount,
      double grandTotal});

  @override
  $UserModelCopyWith<$Res> get user;
  @override
  $DiscountModelCopyWith<$Res>? get appDiscount;
  @override
  $DiscountModelCopyWith<$Res>? get sellerDiscount;
  @override
  $DeliveryModelCopyWith<$Res> get deliveryDetails;
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
    Object? user = null,
    Object? items = null,
    Object? appDiscount = freezed,
    Object? sellerDiscount = freezed,
    Object? deliveryDetails = null,
    Object? deliveryCharge = null,
    Object? totalPrice = null,
    Object? subTotal = null,
    Object? discount = null,
    Object? grandTotal = null,
  }) {
    return _then(_$CartModelImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      appDiscount: freezed == appDiscount
          ? _value.appDiscount
          : appDiscount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
      sellerDiscount: freezed == sellerDiscount
          ? _value.sellerDiscount
          : sellerDiscount // ignore: cast_nullable_to_non_nullable
              as DiscountModel?,
      deliveryDetails: null == deliveryDetails
          ? _value.deliveryDetails
          : deliveryDetails // ignore: cast_nullable_to_non_nullable
              as DeliveryModel,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      grandTotal: null == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartModelImpl implements _CartModel {
  _$CartModelImpl(
      {required this.cartId,
      required this.user,
      required final List<CartProductModel> items,
      this.appDiscount,
      this.sellerDiscount,
      required this.deliveryDetails,
      required this.deliveryCharge,
      required this.totalPrice,
      required this.subTotal,
      required this.discount,
      required this.grandTotal})
      : _items = items;

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  final String cartId;
  @override
  final UserModel user;
  final List<CartProductModel> _items;
  @override
  List<CartProductModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DiscountModel? appDiscount;
  @override
  final DiscountModel? sellerDiscount;
  @override
  final DeliveryModel deliveryDetails;
  @override
  final double deliveryCharge;
  @override
  final double totalPrice;
  @override
  final double subTotal;
  @override
  final double discount;
  @override
  final double grandTotal;

  @override
  String toString() {
    return 'CartModel(cartId: $cartId, user: $user, items: $items, appDiscount: $appDiscount, sellerDiscount: $sellerDiscount, deliveryDetails: $deliveryDetails, deliveryCharge: $deliveryCharge, totalPrice: $totalPrice, subTotal: $subTotal, discount: $discount, grandTotal: $grandTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.appDiscount, appDiscount) ||
                other.appDiscount == appDiscount) &&
            (identical(other.sellerDiscount, sellerDiscount) ||
                other.sellerDiscount == sellerDiscount) &&
            (identical(other.deliveryDetails, deliveryDetails) ||
                other.deliveryDetails == deliveryDetails) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartId,
      user,
      const DeepCollectionEquality().hash(_items),
      appDiscount,
      sellerDiscount,
      deliveryDetails,
      deliveryCharge,
      totalPrice,
      subTotal,
      discount,
      grandTotal);

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  factory _CartModel(
      {required final String cartId,
      required final UserModel user,
      required final List<CartProductModel> items,
      final DiscountModel? appDiscount,
      final DiscountModel? sellerDiscount,
      required final DeliveryModel deliveryDetails,
      required final double deliveryCharge,
      required final double totalPrice,
      required final double subTotal,
      required final double discount,
      required final double grandTotal}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  String get cartId;
  @override
  UserModel get user;
  @override
  List<CartProductModel> get items;
  @override
  DiscountModel? get appDiscount;
  @override
  DiscountModel? get sellerDiscount;
  @override
  DeliveryModel get deliveryDetails;
  @override
  double get deliveryCharge;
  @override
  double get totalPrice;
  @override
  double get subTotal;
  @override
  double get discount;
  @override
  double get grandTotal;

  /// Create a copy of CartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
