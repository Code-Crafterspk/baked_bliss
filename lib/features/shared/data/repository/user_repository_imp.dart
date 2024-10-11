import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/features/shared/data/data_source/local/local_data_source.dart';
import 'package:baked_bliss/features/shared/data/data_source/remote/user_remote_data_source.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:fpdart/fpdart.dart';

class UserRepositoryImp implements UserRepository {
  final UserRemoteDataSourceImp _remoteDataSource;
  final UserLocalDataSourceImp _localDataSource;
  final NetworkInfo _networkInfo;

  UserRepositoryImp(
      {required UserRemoteDataSourceImp remoteDataSource,
      required UserLocalDataSourceImp localDataSource,
      required NetworkInfo networkInfo})
      : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _networkInfo = networkInfo;
  @override
  Future<Either<Failure, void>> addAddress(AddressModel address,
      {required String userId}) async {
    try {
      await _remoteDataSource.addAddress(address, userId: userId);
      await _localDataSource.addAddress(address, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> clearUser() async {
    try {
      await _remoteDataSource.clearUser();
      await _localDataSource.clearUser();
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, List<AddressModel>>> getAddresses(
      {required String userId}) async {
    try {
      if (!_networkInfo.isConnected) {
        final addresses = await _localDataSource.getAddresses(userId: userId);
        return right(addresses);
      }
      final addresses = await _remoteDataSource.getAddresses(userId: userId);
      await _localDataSource.addAddresses(addresses, userId: userId);
      return right(addresses);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, UserModel>> getUser() async {
    try {
      if (!_networkInfo.isConnected) {
        final user = await _localDataSource.getUser();
        return right(user);
      }
      final user = await _remoteDataSource.getUser();
      await _localDataSource.saveUser(user);
      return right(user);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> removeAddress(AddressModel address,
      {required String userId}) async {
    try {
      await _remoteDataSource.removeAddress(address, userId: userId);
      await _localDataSource.removeAddress(address, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> saveUser(UserModel user) async {
    try {
      await _remoteDataSource.saveUser(user);
      await _localDataSource.saveUser(user);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> updateAddress(AddressModel address,
      {required String userId}) async {
    try {
      await _remoteDataSource.updateAddress(address, userId: userId);
      await _localDataSource.updateAddress(address, userId: userId);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, void>> updateUser(UserModel user) async {
    try {
      await _remoteDataSource.updateUser(user);
      await _localDataSource.updaetUser(user);
      return right(null);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
