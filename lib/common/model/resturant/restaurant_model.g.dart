// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantModelImpl _$$RestaurantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantModelImpl(
      restaurantId: json['restaurantId'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      phoneNumber: json['phoneNumber'] as String,
      menu: (json['menu'] as List<dynamic>)
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotions: (json['promotions'] as List<dynamic>)
          .map((e) => PromotionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestaurantModelImplToJson(
        _$RestaurantModelImpl instance) =>
    <String, dynamic>{
      'restaurantId': instance.restaurantId,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'menu': instance.menu,
      'promotions': instance.promotions,
    };
