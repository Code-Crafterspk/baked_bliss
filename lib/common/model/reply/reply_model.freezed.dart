// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReplyModel _$ReplyModelFromJson(Map<String, dynamic> json) {
  return _ReplyModel.fromJson(json);
}

/// @nodoc
mixin _$ReplyModel {
  String get replyId => throw _privateConstructorUsedError;
  String get reviewerId =>
      throw _privateConstructorUsedError; // The person who is replying (user or seller)
  String get content =>
      throw _privateConstructorUsedError; // The actual reply content
  bool get isFromSeller =>
      throw _privateConstructorUsedError; // true if the reply is from the seller
  DateTime get replyDate => throw _privateConstructorUsedError;

  /// Serializes this ReplyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReplyModelCopyWith<ReplyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyModelCopyWith<$Res> {
  factory $ReplyModelCopyWith(
          ReplyModel value, $Res Function(ReplyModel) then) =
      _$ReplyModelCopyWithImpl<$Res, ReplyModel>;
  @useResult
  $Res call(
      {String replyId,
      String reviewerId,
      String content,
      bool isFromSeller,
      DateTime replyDate});
}

/// @nodoc
class _$ReplyModelCopyWithImpl<$Res, $Val extends ReplyModel>
    implements $ReplyModelCopyWith<$Res> {
  _$ReplyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? reviewerId = null,
    Object? content = null,
    Object? isFromSeller = null,
    Object? replyDate = null,
  }) {
    return _then(_value.copyWith(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFromSeller: null == isFromSeller
          ? _value.isFromSeller
          : isFromSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      replyDate: null == replyDate
          ? _value.replyDate
          : replyDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReplyModelImplCopyWith<$Res>
    implements $ReplyModelCopyWith<$Res> {
  factory _$$ReplyModelImplCopyWith(
          _$ReplyModelImpl value, $Res Function(_$ReplyModelImpl) then) =
      __$$ReplyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String replyId,
      String reviewerId,
      String content,
      bool isFromSeller,
      DateTime replyDate});
}

/// @nodoc
class __$$ReplyModelImplCopyWithImpl<$Res>
    extends _$ReplyModelCopyWithImpl<$Res, _$ReplyModelImpl>
    implements _$$ReplyModelImplCopyWith<$Res> {
  __$$ReplyModelImplCopyWithImpl(
      _$ReplyModelImpl _value, $Res Function(_$ReplyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? replyId = null,
    Object? reviewerId = null,
    Object? content = null,
    Object? isFromSeller = null,
    Object? replyDate = null,
  }) {
    return _then(_$ReplyModelImpl(
      replyId: null == replyId
          ? _value.replyId
          : replyId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewerId: null == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      isFromSeller: null == isFromSeller
          ? _value.isFromSeller
          : isFromSeller // ignore: cast_nullable_to_non_nullable
              as bool,
      replyDate: null == replyDate
          ? _value.replyDate
          : replyDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReplyModelImpl implements _ReplyModel {
  _$ReplyModelImpl(
      {required this.replyId,
      required this.reviewerId,
      required this.content,
      required this.isFromSeller,
      required this.replyDate});

  factory _$ReplyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReplyModelImplFromJson(json);

  @override
  final String replyId;
  @override
  final String reviewerId;
// The person who is replying (user or seller)
  @override
  final String content;
// The actual reply content
  @override
  final bool isFromSeller;
// true if the reply is from the seller
  @override
  final DateTime replyDate;

  @override
  String toString() {
    return 'ReplyModel(replyId: $replyId, reviewerId: $reviewerId, content: $content, isFromSeller: $isFromSeller, replyDate: $replyDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReplyModelImpl &&
            (identical(other.replyId, replyId) || other.replyId == replyId) &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isFromSeller, isFromSeller) ||
                other.isFromSeller == isFromSeller) &&
            (identical(other.replyDate, replyDate) ||
                other.replyDate == replyDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, replyId, reviewerId, content, isFromSeller, replyDate);

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReplyModelImplCopyWith<_$ReplyModelImpl> get copyWith =>
      __$$ReplyModelImplCopyWithImpl<_$ReplyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReplyModelImplToJson(
      this,
    );
  }
}

abstract class _ReplyModel implements ReplyModel {
  factory _ReplyModel(
      {required final String replyId,
      required final String reviewerId,
      required final String content,
      required final bool isFromSeller,
      required final DateTime replyDate}) = _$ReplyModelImpl;

  factory _ReplyModel.fromJson(Map<String, dynamic> json) =
      _$ReplyModelImpl.fromJson;

  @override
  String get replyId;
  @override
  String get reviewerId; // The person who is replying (user or seller)
  @override
  String get content; // The actual reply content
  @override
  bool get isFromSeller; // true if the reply is from the seller
  @override
  DateTime get replyDate;

  /// Create a copy of ReplyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReplyModelImplCopyWith<_$ReplyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
