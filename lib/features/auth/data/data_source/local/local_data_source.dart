import 'dart:developer';

import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/utils/local_database/local_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract interface class AuthLocalDataSource {
  Future<void> createUser(UserModel user);
  Future<void> clearUser();
}

class AuthLocalDataSourceImp implements AuthLocalDataSource {
  final AppDatabase _db;
  AuthLocalDataSourceImp(
    AppDatabase db,
    FirebaseAuth auth,
  ) : _db = db;

  Future<T> _handleException<T>(Future<T> Function() action) async {
    try {
      return await action();
    } catch (e) {
      log(e.toString());
      throw ServerException(errorCode: 'unknown', message: 'error occured');
    }
  }

  @override
  Future<void> clearUser() async {
    return await _handleException(() {
      return _db.clearUserData();
    });
  }

  @override
  Future<void> createUser(UserModel user) async {
    return await _handleException(() async {
      await _db.createUser(user);
    });
  }
}
