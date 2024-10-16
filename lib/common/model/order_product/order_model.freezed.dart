// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  String get orderId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<CartProductModel> get products => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  DeliveryModel get deliveryDetails => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  DateTime get orderTime => throw _privateConstructorUsedError;
  DateTime get estimatedDeliveryTime => throw _privateConstructorUsedError;

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {String orderId,
      String userId,
      List<CartProductModel> products,
      double totalAmount,
      DeliveryModel deliveryDetails,
      OrderStatus status,
      DateTime orderTime,
      DateTime estimatedDeliveryTime});

  $DeliveryModelCopyWith<$Res> get deliveryDetails;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? userId = null,
    Object? products = null,
    Object? totalAmount = null,
    Object? deliveryDetails = null,
    Object? status = null,
    Object? orderTime = null,
    Object? estimatedDeliveryTime = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryDetails: null == deliveryDetails
          ? _value.deliveryDetails
          : deliveryDetails // ignore: cast_nullable_to_non_nullable
              as DeliveryModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderTime: null == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedDeliveryTime: null == estimatedDeliveryTime
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of OrderModel
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
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String userId,
      List<CartProductModel> products,
      double totalAmount,
      DeliveryModel deliveryDetails,
      OrderStatus status,
      DateTime orderTime,
      DateTime estimatedDeliveryTime});

  @override
  $DeliveryModelCopyWith<$Res> get deliveryDetails;
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? userId = null,
    Object? products = null,
    Object? totalAmount = null,
    Object? deliveryDetails = null,
    Object? status = null,
    Object? orderTime = null,
    Object? estimatedDeliveryTime = null,
  }) {
    return _then(_$OrderModelImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      deliveryDetails: null == deliveryDetails
          ? _value.deliveryDetails
          : deliveryDetails // ignore: cast_nullable_to_non_nullable
              as DeliveryModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      orderTime: null == orderTime
          ? _value.orderTime
          : orderTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      estimatedDeliveryTime: null == estimatedDeliveryTime
          ? _value.estimatedDeliveryTime
          : estimatedDeliveryTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  _$OrderModelImpl(
      {required this.orderId,
      required this.userId,
      required final List<CartProductModel> products,
      required this.totalAmount,
      required this.deliveryDetails,
      required this.status,
      required this.orderTime,
      required this.estimatedDeliveryTime})
      : _products = products;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final String orderId;
  @override
  final String userId;
  final List<CartProductModel> _products;
  @override
  List<CartProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final double totalAmount;
  @override
  final DeliveryModel deliveryDetails;
  @override
  final OrderStatus status;
  @override
  final DateTime orderTime;
  @override
  final DateTime estimatedDeliveryTime;

  @override
  String toString() {
    return 'OrderModel(orderId: $orderId, userId: $userId, products: $products, totalAmount: $totalAmount, deliveryDetails: $deliveryDetails, status: $status, orderTime: $orderTime, estimatedDeliveryTime: $estimatedDeliveryTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.deliveryDetails, deliveryDetails) ||
                other.deliveryDetails == deliveryDetails) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.orderTime, orderTime) ||
                other.orderTime == orderTime) &&
            (identical(other.estimatedDeliveryTime, estimatedDeliveryTime) ||
                other.estimatedDeliveryTime == estimatedDeliveryTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      userId,
      const DeepCollectionEquality().hash(_products),
      totalAmount,
      deliveryDetails,
      status,
      orderTime,
      estimatedDeliveryTime);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  factory _OrderModel(
      {required final String orderId,
      required final String userId,
      required final List<CartProductModel> products,
      required final double totalAmount,
      required final DeliveryModel deliveryDetails,
      required final OrderStatus status,
      required final DateTime orderTime,
      required final DateTime estimatedDeliveryTime}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  String get orderId;
  @override
  String get userId;
  @override
  List<CartProductModel> get products;
  @override
  double get totalAmount;
  @override
  DeliveryModel get deliveryDetails;
  @override
  OrderStatus get status;
  @override
  DateTime get orderTime;
  @override
  DateTime get estimatedDeliveryTime;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
