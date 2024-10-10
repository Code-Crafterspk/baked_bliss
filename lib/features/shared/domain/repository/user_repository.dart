import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class UserRepository {
  Future<Either<Failure, UserModel>> getUser();
  Future<Either<Failure, void>> saveUser(UserModel user);
  Future<Either<Failure, void>> clearUser();
  Future<Either<Failure, void>> addAddress(AddressModel address,
      {required String userId});
  Future<Either<Failure, void>> removeAddress(AddressModel address,
      {required String userId});
  Future<Either<Failure, void>> updateAddress(AddressModel address,
      {required String userId});
  Future<Either<Failure, List<AddressModel>>> getAddresses(
      {required String userId});
  Future<Either<Failure, void>> updateUser(UserModel user);
}
