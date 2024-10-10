// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VariationModel _$VariationModelFromJson(Map<String, dynamic> json) {
  return _VariationModel.fromJson(json);
}

/// @nodoc
mixin _$VariationModel {
  String get variationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;

  /// Serializes this VariationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VariationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariationModelCopyWith<VariationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariationModelCopyWith<$Res> {
  factory $VariationModelCopyWith(
          VariationModel value, $Res Function(VariationModel) then) =
      _$VariationModelCopyWithImpl<$Res, VariationModel>;
  @useResult
  $Res call({String variationId, String name, double price, bool isAvailable});
}

/// @nodoc
class _$VariationModelCopyWithImpl<$Res, $Val extends VariationModel>
    implements $VariationModelCopyWith<$Res> {
  _$VariationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variationId = null,
    Object? name = null,
    Object? price = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      variationId: null == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariationModelImplCopyWith<$Res>
    implements $VariationModelCopyWith<$Res> {
  factory _$$VariationModelImplCopyWith(_$VariationModelImpl value,
          $Res Function(_$VariationModelImpl) then) =
      __$$VariationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variationId, String name, double price, bool isAvailable});
}

/// @nodoc
class __$$VariationModelImplCopyWithImpl<$Res>
    extends _$VariationModelCopyWithImpl<$Res, _$VariationModelImpl>
    implements _$$VariationModelImplCopyWith<$Res> {
  __$$VariationModelImplCopyWithImpl(
      _$VariationModelImpl _value, $Res Function(_$VariationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variationId = null,
    Object? name = null,
    Object? price = null,
    Object? isAvailable = null,
  }) {
    return _then(_$VariationModelImpl(
      variationId: null == variationId
          ? _value.variationId
          : variationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariationModelImpl implements _VariationModel {
  const _$VariationModelImpl(
      {required this.variationId,
      required this.name,
      required this.price,
      required this.isAvailable});

  factory _$VariationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariationModelImplFromJson(json);

  @override
  final String variationId;
  @override
  final String name;
  @override
  final double price;
  @override
  final bool isAvailable;

  @override
  String toString() {
    return 'VariationModel(variationId: $variationId, name: $name, price: $price, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariationModelImpl &&
            (identical(other.variationId, variationId) ||
                other.variationId == variationId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, variationId, name, price, isAvailable);

  /// Create a copy of VariationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariationModelImplCopyWith<_$VariationModelImpl> get copyWith =>
      __$$VariationModelImplCopyWithImpl<_$VariationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariationModelImplToJson(
      this,
    );
  }
}

abstract class _VariationModel implements VariationModel {
  const factory _VariationModel(
      {required final String variationId,
      required final String name,
      required final double price,
      required final bool isAvailable}) = _$VariationModelImpl;

  factory _VariationModel.fromJson(Map<String, dynamic> json) =
      _$VariationModelImpl.fromJson;

  @override
  String get variationId;
  @override
  String get name;
  @override
  double get price;
  @override
  bool get isAvailable;

  /// Create a copy of VariationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariationModelImplCopyWith<_$VariationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
