import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/features/shared/data/data_source/user_data_source.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';

class UserLocalDataSourceImp implements UserDataSource {
  final AppDatabase _db;

  UserLocalDataSourceImp({required AppDatabase db}) : _db = db;

  @override
  Future<void> clearUser() async {
    return await handleLocalDatabaseException(() async {
      await _db.clearUserData();
    });
  }

  @override
  Future<List<AddressModel>> getAddresses({required String userId}) async {
    return await handleLocalDatabaseException(() async {
      return await _db.getAddresses();
    });
  }

  @override
  Future<UserModel> getUser() async {
    return await handleLocalDatabaseException(() async {
      final user = await _db.getUser();
      if (user == null) {
        throw ServerException(
            errorCode: 'user-not-found', message: 'User not found');
      }
      return user;
    });
  }

  @override
  Future<void> removeAddress(AddressModel address,
      {required String userId}) async {
    return await handleLocalDatabaseException(() async {
      await _db.removeAddress(address);
    });
  }

  @override
  Future<void> saveUser(UserModel user) async {
    return await handleLocalDatabaseException(() async {
      await _db.createUser(user);
    });
  }

  @override
  Future<void> updateAddress(AddressModel address,
      {required String userId}) async {
    return await handleLocalDatabaseException(() async {
      await _db.updateAddress(address);
    });
  }

  @override
  Future<void> addAddress(AddressModel address,
      {required String userId}) async {
    return await handleLocalDatabaseException(() async {
      await _db.addAddress(address);
    });
  }

  Future<void> addAddresses(List<AddressModel> addresses,
      {required String userId}) async {
    return await handleLocalDatabaseException(() async {
      await _db.addAddresses(addresses);
    });
  }

  Future<void> updaetUser(UserModel user) async {
    return await handleLocalDatabaseException(() async {
      await _db.updateUser(user);
    });
  }

  @override
  Future<void> updateUser(UserModel user) async {
    return await handleLocalDatabaseException(() async {
      await _db.updateUser(user);
    });
  }
}
