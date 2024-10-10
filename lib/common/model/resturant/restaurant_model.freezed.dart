// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) {
  return _RestaurantModel.fromJson(json);
}

/// @nodoc
mixin _$RestaurantModel {
  String get restaurantId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  List<ProductModel> get menu => throw _privateConstructorUsedError;
  List<PromotionModel> get promotions => throw _privateConstructorUsedError;

  /// Serializes this RestaurantModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantModelCopyWith<RestaurantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantModelCopyWith<$Res> {
  factory $RestaurantModelCopyWith(
          RestaurantModel value, $Res Function(RestaurantModel) then) =
      _$RestaurantModelCopyWithImpl<$Res, RestaurantModel>;
  @useResult
  $Res call(
      {String restaurantId,
      String name,
      String address,
      String phoneNumber,
      List<ProductModel> menu,
      List<PromotionModel> promotions});
}

/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res, $Val extends RestaurantModel>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? menu = null,
    Object? promotions = null,
  }) {
    return _then(_value.copyWith(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      promotions: null == promotions
          ? _value.promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantModelImplCopyWith<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  factory _$$RestaurantModelImplCopyWith(_$RestaurantModelImpl value,
          $Res Function(_$RestaurantModelImpl) then) =
      __$$RestaurantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String restaurantId,
      String name,
      String address,
      String phoneNumber,
      List<ProductModel> menu,
      List<PromotionModel> promotions});
}

/// @nodoc
class __$$RestaurantModelImplCopyWithImpl<$Res>
    extends _$RestaurantModelCopyWithImpl<$Res, _$RestaurantModelImpl>
    implements _$$RestaurantModelImplCopyWith<$Res> {
  __$$RestaurantModelImplCopyWithImpl(
      _$RestaurantModelImpl _value, $Res Function(_$RestaurantModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantId = null,
    Object? name = null,
    Object? address = null,
    Object? phoneNumber = null,
    Object? menu = null,
    Object? promotions = null,
  }) {
    return _then(_$RestaurantModelImpl(
      restaurantId: null == restaurantId
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      promotions: null == promotions
          ? _value._promotions
          : promotions // ignore: cast_nullable_to_non_nullable
              as List<PromotionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantModelImpl implements _RestaurantModel {
  _$RestaurantModelImpl(
      {required this.restaurantId,
      required this.name,
      required this.address,
      required this.phoneNumber,
      required final List<ProductModel> menu,
      required final List<PromotionModel> promotions})
      : _menu = menu,
        _promotions = promotions;

  factory _$RestaurantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantModelImplFromJson(json);

  @override
  final String restaurantId;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phoneNumber;
  final List<ProductModel> _menu;
  @override
  List<ProductModel> get menu {
    if (_menu is EqualUnmodifiableListView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menu);
  }

  final List<PromotionModel> _promotions;
  @override
  List<PromotionModel> get promotions {
    if (_promotions is EqualUnmodifiableListView) return _promotions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promotions);
  }

  @override
  String toString() {
    return 'RestaurantModel(restaurantId: $restaurantId, name: $name, address: $address, phoneNumber: $phoneNumber, menu: $menu, promotions: $promotions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantModelImpl &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._menu, _menu) &&
            const DeepCollectionEquality()
                .equals(other._promotions, _promotions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      restaurantId,
      name,
      address,
      phoneNumber,
      const DeepCollectionEquality().hash(_menu),
      const DeepCollectionEquality().hash(_promotions));

  /// Create a copy of RestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantModelImplCopyWith<_$RestaurantModelImpl> get copyWith =>
      __$$RestaurantModelImplCopyWithImpl<_$RestaurantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantModelImplToJson(
      this,
    );
  }
}

abstract class _RestaurantModel implements RestaurantModel {
  factory _RestaurantModel(
      {required final String restaurantId,
      required final String name,
      required final String address,
      required final String phoneNumber,
      required final List<ProductModel> menu,
      required final List<PromotionModel> promotions}) = _$RestaurantModelImpl;

  factory _RestaurantModel.fromJson(Map<String, dynamic> json) =
      _$RestaurantModelImpl.fromJson;

  @override
  String get restaurantId;
  @override
  String get name;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  List<ProductModel> get menu;
  @override
  List<PromotionModel> get promotions;

  /// Create a copy of RestaurantModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantModelImplCopyWith<_$RestaurantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
