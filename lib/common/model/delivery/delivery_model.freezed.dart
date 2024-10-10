// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryModel _$DeliveryModelFromJson(Map<String, dynamic> json) {
  return _DeliveryModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryModel {
  String get deliveryId => throw _privateConstructorUsedError;
  AddressModel get deliveryAddress => throw _privateConstructorUsedError;
  double get deliveryCharge => throw _privateConstructorUsedError;
  DateTime get estimatedDeliveryTime => throw _privateConstructorUsedError;

  /// Serializes this DeliveryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryModelCopyWith<DeliveryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryModelCopyWith<$Res> {
  factory $DeliveryModelCopyWith(
          DeliveryModel value, $Res Function(DeliveryModel) then) =
      _$DeliveryModelCopyWithImpl<$Res, DeliveryModel>;
  @useResult
  $Res call(
      {String deliveryId,
      AddressModel deliveryAddress,
      double deliveryCharge,
      DateTime estimatedDeliveryTime});

  $AddressModelCopyWith<$Res> get deliveryAddress;
}

/// @nodoc
class _$DeliveryModelCopyWithImpl<$Res, $Val extends DeliveryModel>
    implements $DeliveryModelCopyWith<$Res> {
  _$DeliveryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryId = null,
    Object? deliveryAddress = null,
    Object? deliveryCharge = null,
    Object? estimatedDeliveryTime = null,
  }) {
    return _then(_value.copyWith(
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedDeliveryTime: null == estimatedDeliveryTime
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get deliveryAddress {
    return $AddressModelCopyWith<$Res>(_value.deliveryAddress, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryModelImplCopyWith<$Res>
    implements $DeliveryModelCopyWith<$Res> {
  factory _$$DeliveryModelImplCopyWith(
          _$DeliveryModelImpl value, $Res Function(_$DeliveryModelImpl) then) =
      __$$DeliveryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deliveryId,
      AddressModel deliveryAddress,
      double deliveryCharge,
      DateTime estimatedDeliveryTime});

  @override
  $AddressModelCopyWith<$Res> get deliveryAddress;
}

/// @nodoc
class __$$DeliveryModelImplCopyWithImpl<$Res>
    extends _$DeliveryModelCopyWithImpl<$Res, _$DeliveryModelImpl>
    implements _$$DeliveryModelImplCopyWith<$Res> {
  __$$DeliveryModelImplCopyWithImpl(
      _$DeliveryModelImpl _value, $Res Function(_$DeliveryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryId = null,
    Object? deliveryAddress = null,
    Object? deliveryCharge = null,
    Object? estimatedDeliveryTime = null,
  }) {
    return _then(_$DeliveryModelImpl(
      deliveryId: null == deliveryId
          ? _value.deliveryId
          : deliveryId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedDeliveryTime: null == estimatedDeliveryTime
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryModelImpl implements _DeliveryModel {
  _$DeliveryModelImpl(
      {required this.deliveryId,
      required this.deliveryAddress,
      required this.deliveryCharge,
      required this.estimatedDeliveryTime});

  factory _$DeliveryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryModelImplFromJson(json);

  @override
  final String deliveryId;
  @override
  final AddressModel deliveryAddress;
  @override
  final double deliveryCharge;
  @override
  final DateTime estimatedDeliveryTime;

  @override
  String toString() {
    return 'DeliveryModel(deliveryId: $deliveryId, deliveryAddress: $deliveryAddress, deliveryCharge: $deliveryCharge, estimatedDeliveryTime: $estimatedDeliveryTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryModelImpl &&
            (identical(other.deliveryId, deliveryId) ||
                other.deliveryId == deliveryId) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.estimatedDeliveryTime, estimatedDeliveryTime) ||
                other.estimatedDeliveryTime == estimatedDeliveryTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deliveryId, deliveryAddress,
      deliveryCharge, estimatedDeliveryTime);

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      __$$DeliveryModelImplCopyWithImpl<_$DeliveryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryModelImplToJson(
      this,
    );
  }
}

abstract class _DeliveryModel implements DeliveryModel {
  factory _DeliveryModel(
      {required final String deliveryId,
      required final AddressModel deliveryAddress,
      required final double deliveryCharge,
      required final DateTime estimatedDeliveryTime}) = _$DeliveryModelImpl;

  factory _DeliveryModel.fromJson(Map<String, dynamic> json) =
      _$DeliveryModelImpl.fromJson;

  @override
  String get deliveryId;
  @override
  AddressModel get deliveryAddress;
  @override
  double get deliveryCharge;
  @override
  DateTime get estimatedDeliveryTime;

  /// Create a copy of DeliveryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryModelImplCopyWith<_$DeliveryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
