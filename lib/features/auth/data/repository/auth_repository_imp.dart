import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/failure/failure.dart';
import 'package:baked_bliss/features/auth/data/data_source/local/local_data_source.dart';
import 'package:baked_bliss/features/auth/data/data_source/remote/remote_data_source.dart';
import 'package:baked_bliss/features/auth/domain/model/auth_response.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:baked_bliss/utils/helper/network_info.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImp implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;

  AuthRepositoryImp(
    AuthRemoteDataSource remoteDataSource,
    AuthLocalDataSource localDataSource,
    NetworkInfo networkInfo,
  )   : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource,
        _networkInfo = networkInfo;

  Future<Either<Failure, T>> _handleException<T>(
      Future<T> Function() action) async {
    try {
      if (!_networkInfo.isConnected) {
        throw ServerException(
          errorCode: 'no-network',
          message: 'Please check your network connection and try again',
        );
      }
      final res = await action();
      return right(res);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, bool>> forgetPassword(String email) async {
    return _handleException(() async {
      return await _remoteDataSource.forgetPassword(email);
    });
  }

  @override
  Future<Either<Failure, AuthResponse>> signInWithEmail(
      {required String email, required String password}) async {
    return _handleException(() async {
      final res = await _remoteDataSource.signInWithEmail(
          email: email, password: password);
      return res;
    });
  }

  @override
  Future<Either<Failure, AuthResponse>> signInWithFacebook() async {
    return await _handleException(() async {
      final res = await _remoteDataSource.signInWithFacebook();
      return res;
    });
  }

  @override
  Future<Either<Failure, AuthResponse>> signInWithGoogle() async {
    return _handleException(() async {
      final res = await _remoteDataSource.signInWithGoogle();
      return res;
    });
  }

  @override
  Future<Either<Failure, AuthResponse>> signInWithInstagram() async {
    return _handleException(() async {
      final res = await _remoteDataSource.singInWithInstagram();
      return res;
    });
  }

  @override
  Future<Either<Failure, AuthResponse>> signUpWithEmail({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  }) async {
    return _handleException(() async {
      final res = await _remoteDataSource.signUpWithEmail(
        email: email,
        password: password,
        fullName: fullName,
        phoneNumber: phoneNumber,
      );
      return res;
    });
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    return _handleException(() async {
      await _remoteDataSource.signOut();
      await _localDataSource.clearUser();
      return true;
    });
  }

  @override
  Future<Either<Failure, bool>> userAuthenticated() async {
    return _handleException(() {
      return Future.value(_remoteDataSource.isUserAuthenticated());
    });
  }
}
