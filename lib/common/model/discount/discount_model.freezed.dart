// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountModel _$DiscountModelFromJson(Map<String, dynamic> json) {
  return _DiscountModel.fromJson(json);
}

/// @nodoc
mixin _$DiscountModel {
  String get discountId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  bool get isPercentage => throw _privateConstructorUsedError;
  double get maxDiscount => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this DiscountModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountModelCopyWith<DiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountModelCopyWith<$Res> {
  factory $DiscountModelCopyWith(
          DiscountModel value, $Res Function(DiscountModel) then) =
      _$DiscountModelCopyWithImpl<$Res, DiscountModel>;
  @useResult
  $Res call(
      {String discountId,
      String code,
      double amount,
      bool isPercentage,
      double maxDiscount,
      DateTime expiryDate,
      DateTime startDate,
      String description});
}

/// @nodoc
class _$DiscountModelCopyWithImpl<$Res, $Val extends DiscountModel>
    implements $DiscountModelCopyWith<$Res> {
  _$DiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountId = null,
    Object? code = null,
    Object? amount = null,
    Object? isPercentage = null,
    Object? maxDiscount = null,
    Object? expiryDate = null,
    Object? startDate = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      discountId: null == discountId
          ? _value.discountId
          : discountId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isPercentage: null == isPercentage
          ? _value.isPercentage
          : isPercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      maxDiscount: null == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountModelImplCopyWith<$Res>
    implements $DiscountModelCopyWith<$Res> {
  factory _$$DiscountModelImplCopyWith(
          _$DiscountModelImpl value, $Res Function(_$DiscountModelImpl) then) =
      __$$DiscountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String discountId,
      String code,
      double amount,
      bool isPercentage,
      double maxDiscount,
      DateTime expiryDate,
      DateTime startDate,
      String description});
}

/// @nodoc
class __$$DiscountModelImplCopyWithImpl<$Res>
    extends _$DiscountModelCopyWithImpl<$Res, _$DiscountModelImpl>
    implements _$$DiscountModelImplCopyWith<$Res> {
  __$$DiscountModelImplCopyWithImpl(
      _$DiscountModelImpl _value, $Res Function(_$DiscountModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discountId = null,
    Object? code = null,
    Object? amount = null,
    Object? isPercentage = null,
    Object? maxDiscount = null,
    Object? expiryDate = null,
    Object? startDate = null,
    Object? description = null,
  }) {
    return _then(_$DiscountModelImpl(
      discountId: null == discountId
          ? _value.discountId
          : discountId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isPercentage: null == isPercentage
          ? _value.isPercentage
          : isPercentage // ignore: cast_nullable_to_non_nullable
              as bool,
      maxDiscount: null == maxDiscount
          ? _value.maxDiscount
          : maxDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountModelImpl implements _DiscountModel {
  _$DiscountModelImpl(
      {required this.discountId,
      required this.code,
      required this.amount,
      required this.isPercentage,
      required this.maxDiscount,
      required this.expiryDate,
      required this.startDate,
      required this.description});

  factory _$DiscountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountModelImplFromJson(json);

  @override
  final String discountId;
  @override
  final String code;
  @override
  final double amount;
  @override
  final bool isPercentage;
  @override
  final double maxDiscount;
  @override
  final DateTime expiryDate;
  @override
  final DateTime startDate;
  @override
  final String description;

  @override
  String toString() {
    return 'DiscountModel(discountId: $discountId, code: $code, amount: $amount, isPercentage: $isPercentage, maxDiscount: $maxDiscount, expiryDate: $expiryDate, startDate: $startDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountModelImpl &&
            (identical(other.discountId, discountId) ||
                other.discountId == discountId) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isPercentage, isPercentage) ||
                other.isPercentage == isPercentage) &&
            (identical(other.maxDiscount, maxDiscount) ||
                other.maxDiscount == maxDiscount) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, discountId, code, amount,
      isPercentage, maxDiscount, expiryDate, startDate, description);

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountModelImplCopyWith<_$DiscountModelImpl> get copyWith =>
      __$$DiscountModelImplCopyWithImpl<_$DiscountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountModelImplToJson(
      this,
    );
  }
}

abstract class _DiscountModel implements DiscountModel {
  factory _DiscountModel(
      {required final String discountId,
      required final String code,
      required final double amount,
      required final bool isPercentage,
      required final double maxDiscount,
      required final DateTime expiryDate,
      required final DateTime startDate,
      required final String description}) = _$DiscountModelImpl;

  factory _DiscountModel.fromJson(Map<String, dynamic> json) =
      _$DiscountModelImpl.fromJson;

  @override
  String get discountId;
  @override
  String get code;
  @override
  double get amount;
  @override
  bool get isPercentage;
  @override
  double get maxDiscount;
  @override
  DateTime get expiryDate;
  @override
  DateTime get startDate;
  @override
  String get description;

  /// Create a copy of DiscountModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountModelImplCopyWith<_$DiscountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
