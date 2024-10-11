import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:get/get.dart';
import 'package:baked_bliss/features/auth/data/data_source/local/local_data_source.dart';
import 'package:baked_bliss/features/auth/data/data_source/remote/remote_data_source.dart';
import 'package:baked_bliss/features/auth/data/repository/auth_repository_imp.dart';
import 'package:baked_bliss/features/auth/domain/repository/auth_repository.dart';
import 'package:baked_bliss/features/auth/domain/usecases/email_login.dart';
import 'package:baked_bliss/features/auth/domain/usecases/email_signup.dart';
import 'package:baked_bliss/features/auth/domain/usecases/facebook_login.dart';
import 'package:baked_bliss/features/auth/domain/usecases/google_login.dart';
import 'package:baked_bliss/features/auth/domain/usecases/sign_out.dart';
import 'package:baked_bliss/features/auth/domain/usecases/user_authenticated.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get
          ..put<AuthRemoteDataSource>(AuthRemoteDataSourceImp(
            Get.find(),
            Get.find(),
            Get.find(),
            Get.find(),
            Get.find(),
          ))
          ..put<AuthLocalDataSource>(AuthLocalDataSourceImp(
            Get.find(),
            Get.find(),
          ))
          ..put<AuthRepository>(AuthRepositoryImp(
            Get.find(),
            Get.find(),
            Get.find(),
          ))
          ..put(GoogleLoginUseCase(Get.find()))
          ..put(FacebookLoginUseCase(Get.find()))
          ..put(EmailLoginUseCase(Get.find()))
          ..put(EmailSignupUseCase(Get.find()))
          ..put(SignOutUseCase(Get.find()))
          ..put(UserAuthenticatedUseCase(Get.find()))
          ..put(AuthController(
            Get.find(),
            Get.find(),
            Get.find(),
            Get.find(),
            Get.find(),
            Get.find(),
          ))
        //
        ;
  }
}
