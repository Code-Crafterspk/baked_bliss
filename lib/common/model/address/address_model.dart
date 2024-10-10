import 'package:freezed_annotation/freezed_annotation.dart';
part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    required String addressId,
    required String street,
    required String city,
    required String state,
    required String postalCode,
    required String country,
    String? landmark,
    String? apartmentNumber,
    String? phoneNumber,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}