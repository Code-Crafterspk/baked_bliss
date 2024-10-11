import 'dart:developer';

import 'package:baked_bliss/common/loading/loading_screen.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/auth/domain/usecases/email_login.dart';
import 'package:baked_bliss/features/auth/domain/usecases/email_signup.dart';
import 'package:baked_bliss/features/auth/domain/usecases/facebook_login.dart';
import 'package:baked_bliss/features/auth/domain/usecases/google_login.dart';
import 'package:baked_bliss/features/auth/domain/usecases/sign_out.dart';
import 'package:baked_bliss/features/auth/domain/usecases/user_authenticated.dart';
import 'package:baked_bliss/utils/constant/app_routes.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';

class AuthController extends GetxController {
  final GoogleLoginUseCase _googleLogin;
  final FacebookLoginUseCase _facebookLogin;
  final EmailLoginUseCase _emailLogin;
  final EmailSignupUseCase _emailSignup;
  final SignOutUseCase _signOut;
  final UserAuthenticatedUseCase _userAuthenticated;

  AuthController(
    this._googleLogin,
    this._facebookLogin,
    this._emailLogin,
    this._emailSignup,
    this._signOut,
    this._userAuthenticated,
  );

  final _isAuthenticated = false.obs;
  final _showPasswordLogin = false.obs;
  final _showPasswordSignup = false.obs;
  bool get showPasswordLogin => _showPasswordLogin.value;
  bool get showPasswordSignup => _showPasswordSignup.value;
  void toggleShowPasswordLogin() {
    _showPasswordLogin.value = !_showPasswordLogin.value;
  }

  void toggleShowPasswordSignup() {
    _showPasswordSignup.value = !_showPasswordSignup.value;
  }

  bool get isAuthenticated => _isAuthenticated.value;

  final error = false.obs;
  final RxString? errorMessage = null;

  void setAuthenticated(bool value) {
    _isAuthenticated.value = value;
  }

  Future<void> googleLogin() async {
    _showLoading();
    await Future.delayed(const Duration(seconds: 2));
    await _showSuccess();
    await Future.delayed(const Duration(seconds: 5));
    log('google login');
    // final result = await _googleLogin(NoParams());
    // log('google login result');
    // print(result);
    // log(result.toString());
    // result.fold(
    //   (failure) {
    //     if (kDebugMode) {
    //       print(failure.message);
    //     }
    //   },
    //   (authResponse) async {
    //     await _showSuccess();
    //     setAuthenticated(true);
    //     Get.toNamed(AppRoutes.navigation);
    //   },
    // );
    _hideLoading();
  }

  Future<void> facebookLogin() async {
    _showLoading();
    final result = await _facebookLogin(NoParams());
    result.fold(
      (failure) {
        if (kDebugMode) {
          print(failure.message);
        }
      },
      (authResponse) async {
        await _showSuccess();
        setAuthenticated(true);
        Get.toNamed(AppRoutes.navigation);
      },
    );
    _hideLoading();
  }

  Future<void> emailLogin(
    String email,
    String password,
  ) async {
    LoadingScreen.instance.show(context: Get.overlayContext!);

    final result =
        await _emailLogin(EmailLoginParams(email: email, password: password));
    result.fold(
      (failure) {
        AppHelper.showCustomSnackBar(
          Get.overlayContext!,
          failure.message,
          SnackBarType.error,
        );
      },
      (authResponse) async {
        await _showSuccess();
        setAuthenticated(true);
        Get.offAllNamed(AppRoutes.navigation);
      },
    );
    _hideLoading();
  }

  Future<void> emailSignup(
    String email,
    String password,
    String fullName,
    String phoneNumber,
  ) async {
    LoadingScreen.instance.show(context: Get.overlayContext!);
    final result = await _emailSignup(
      EmailSignupParams(
        email: email,
        password: password,
        name: fullName,
        phone: phoneNumber,
      ),
    );
    result.fold(
      (failure) {
        AppHelper.showCustomSnackBar(
          Get.overlayContext!,
          failure.message,
          SnackBarType.error,
        );
      },
      (authResponse) async {
        await _showSuccess();
        Get.offNamed(AppRoutes.navigation);
        setAuthenticated(true);
      },
    );
    _hideLoading();
  }

  Future<void> signOut() async {
    LoadingScreen.instance.show(context: Get.overlayContext!);

    final result = await _signOut(NoParams());
    result.fold(
      (failure) {
        if (kDebugMode) {
          print(failure.message);
        }
      },
      (_) {
        setAuthenticated(false);
        Get.offAllNamed(AppRoutes.welcome);
      },
    );
    _hideLoading();
  }

  Future<void> userAuthenticated() async {
    final result = await _userAuthenticated(NoParams());
    result.fold((e) => setAuthenticated(false), (t) => setAuthenticated(t));
  }

  void _showLoading() {
    LoadingScreen.instance.show(context: Get.overlayContext!);
  }

  void _hideLoading() {
    LoadingScreen.instance.hide();
  }

  Future<void> _showSuccess() async {
    LoadingScreen.instance.show(
        context: Get.overlayContext!,
        title: 'Success',
        centerWidget:
            const Icon(Icons.check_circle, color: Colors.green, size: 50));
    await Future.delayed(const Duration(seconds: 2));
  }
}
