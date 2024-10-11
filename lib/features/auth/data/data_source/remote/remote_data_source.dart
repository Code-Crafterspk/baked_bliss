import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:baked_bliss/common/exceptions/server_exception.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/features/auth/domain/model/auth_response.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:baked_bliss/utils/helper/functions.dart';
import 'package:baked_bliss/utils/notification/fcm_notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

abstract interface class AuthRemoteDataSource {
  Future<AuthResponse> signInWithEmail({
    required String email,
    required String password,
  });
  Future<AuthResponse> signUpWithEmail({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  });
  Future<AuthResponse> signInWithGoogle();
  Future<AuthResponse> signInWithFacebook();
  Future<AuthResponse> singInWithInstagram();
  Future<bool> forgetPassword(String email);
  Future<void> signOut();
  bool isUserAuthenticated();
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final Client _client;
  final baseApi = 'http://192.168.1.75:8000/api/auth/';
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookLogin;
  final FcmNotification _fcmNotification;

  AuthRemoteDataSourceImp(
    FirebaseAuth firebaseAuth,
    GoogleSignIn googleSignIn,
    FacebookAuth facebookLogin,
    FcmNotification fcmNotification,
    Client httpClient,
  )   : _firebaseAuth = firebaseAuth,
        _googleSignIn = googleSignIn,
        _facebookLogin = facebookLogin,
        _fcmNotification = fcmNotification,
        _client = httpClient;

  Future<T> _handleException<T>(Future<T> Function() action) async {
    try {
      return await action();
    } on ServerException {
      rethrow;
    } on FirebaseAuthException catch (e) {
      throw ServerException(
        errorCode: e.code,
        message: e.message ?? 'Firebase authentication error',
      );
    } on HttpException catch (e) {
      throw ServerException(
        errorCode: 'http-error',
        message: e.message,
      );
    } on TimeoutException catch (e) {
      throw ServerException(
        errorCode: 'timeout',
        message: e.message ?? 'Request timed out',
      );
    } on SocketException catch (e) {
      throw ServerException(
        errorCode: 'socket-error',
        message: e.message,
      );
    } on PlatformException catch (e) {
      throw ServerException(
        errorCode: e.code,
        message: e.message ?? 'Platform error',
      );
    } catch (e) {
      log('Error: $e');
      throw ServerException(
          errorCode: 'unknown', message: 'An unknown error occurred');
    }
  }

  @override
  Future<bool> forgetPassword(String email) async {
    return _handleException(() async {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    });
  }

  @override
  Future<AuthResponse> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return _handleException(() async {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final res = await _client.post(
        Uri.parse(p.join(baseApi, 'login')),
        body: jsonEncode({
          'email': email,
          'pushToken': _fcmNotification.getToken(),
        }),
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
      handleApiResponse(res);
      return _response(AuthMode.email);
    });
  }

  @override
  Future<AuthResponse> signInWithFacebook() async {
    return _handleException<AuthResponse>(() async {
      final result = await _facebookLogin.login();
      if (result.status == LoginStatus.success) {
        final credential =
            FacebookAuthProvider.credential(result.accessToken!.tokenString);
        await _firebaseAuth.signInWithCredential(credential);
        final userData = await _facebookLogin.getUserData();
        final user = UserModel(
          email: userData['email'],
          fullName: userData['name'],
          userId: userData['id'],
          imageUrl: userData['picture']['data']['url'],
          pushToken: _fcmNotification.getToken(),
        );
        await _socialSignIn(user);
        return _response(AuthMode.facebook);
      } else if (result.status == LoginStatus.cancelled) {
        throw ServerException(
          errorCode: 'facebook-login-cancelled',
          message: 'User cancelled facebook login',
        );
      } else {
        throw ServerException(
          errorCode: 'facebook-login-failed',
          message: 'Error while signing in with facebook',
        );
      }
    });
  }

  @override
  Future<AuthResponse> signInWithGoogle() async {
    return _handleException(() async {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        throw ServerException(
          errorCode: 'google-login-cancelled',
          message: 'User cancelled google login',
        );
      }
      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final firebaseCredential =
          await _firebaseAuth.signInWithCredential(credential);
      final firebaseUser = firebaseCredential.user!;
      await _socialSignIn(UserModel(
        email: firebaseUser.email,
        fullName: firebaseUser.displayName ?? '',
        userId: firebaseUser.uid,
        imageUrl: firebaseUser.photoURL,
        pushToken: _fcmNotification.getToken(),
      ));
      return _response(AuthMode.google);
    });
  }

  @override
  Future<AuthResponse> signUpWithEmail({
    required String email,
    required String password,
    required String fullName,
    required String phoneNumber,
  }) async {
    return _handleException(() async {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = userCredential.user!;
      final userModel = UserModel(
        userId: user.uid,
        email: email,
        fullName: fullName,
        phoneNo: phoneNumber,
        pushToken: _fcmNotification.getToken(),
      );
      final userJson = jsonEncode(userModel.toJson());
      final response = await _client.post(
        Uri.parse(p.join(baseApi, 'register')),
        body: userJson,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
      );
      handleApiResponse(response);
      return AuthResponse(
        userId: user.uid,
        isAuthenticated: false,
        authMode: AuthMode.email,
      );
    });
  }

  @override
  Future<AuthResponse> singInWithInstagram() {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    return _handleException(() async {
      await _googleSignIn.signOut();
      await _facebookLogin.logOut();
      await _firebaseAuth.signOut();
    });
  }

  AuthResponse _response(AuthMode authMode, {User? currentUser}) {
    final user = currentUser ?? _firebaseAuth.currentUser!;
    return AuthResponse(
      userId: user.uid,
      isAuthenticated: true,
      authMode: authMode,
    );
  }

  Future<void> _socialSignIn(UserModel user) async {
    final userJson = jsonEncode(user.toJson());
    final response = await _client.post(
      Uri.parse(p.join(baseApi, 'sociallogin')),
      body: userJson,
      headers: {HttpHeaders.contentTypeHeader: 'application/json'},
    );
    handleApiResponse(response);
  }

  @override
  bool isUserAuthenticated() {
    return _firebaseAuth.currentUser != null;
  }
}
