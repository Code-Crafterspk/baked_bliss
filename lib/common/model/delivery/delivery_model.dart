import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_model.freezed.dart';
part 'delivery_model.g.dart';

@freezed
class DeliveryModel with _$DeliveryModel {
  factory DeliveryModel({
    required String deliveryId,
    required AddressModel deliveryAddress,
    required double deliveryCharge,
    required DateTime estimatedDeliveryTime,
  }) = _DeliveryModel;

  factory DeliveryModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryModelFromJson(json);
}
