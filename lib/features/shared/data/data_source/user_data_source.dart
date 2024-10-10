import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';

abstract class UserDataSource {
  Future<UserModel> getUser();
  Future<void> saveUser(UserModel user);
  Future<void> updateUser(UserModel user);
  Future<void> clearUser();
  Future<List<AddressModel>> getAddresses({required String userId});
  Future<void> addAddress(AddressModel address, {required String userId});
  Future<void> removeAddress(AddressModel address, {required String userId});
  Future<void> updateAddress(AddressModel address, {required String userId});
}
