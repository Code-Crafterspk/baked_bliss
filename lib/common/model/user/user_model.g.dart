// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['userId'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String?,
      imageUrl: json['imageUrl'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      phoneNo: json['phoneNo'] as String?,
      dateJoined: json['dateJoined'] == null
          ? null
          : DateTime.parse(json['dateJoined'] as String),
      pushToken: json['pushToken'] as String?,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fullName': instance.fullName,
      'email': instance.email,
      'imageUrl': instance.imageUrl,
      'addresses': instance.addresses,
      'phoneNo': instance.phoneNo,
      'dateJoined': instance.dateJoined?.toIso8601String(),
      'pushToken': instance.pushToken,
    };
