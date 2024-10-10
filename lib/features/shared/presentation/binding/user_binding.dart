import 'package:baked_bliss/features/shared/data/data_source/local/local_data_source.dart';
import 'package:baked_bliss/features/shared/data/data_source/remote/user_remote_data_source.dart';
import 'package:baked_bliss/features/shared/data/repository/user_repository_imp.dart';
import 'package:baked_bliss/features/shared/domain/repository/user_repository.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/add_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/get_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/get_user.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/remove_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/update_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/update_user.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:get/get.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRemoteDataSourceImp>(() => UserRemoteDataSourceImp(
          auth: Get.find(),
          client: Get.find(),
        ));
    Get.lazyPut(() => UserLocalDataSourceImp(db: Get.find()));

    Get.lazyPut<UserRepository>(() => UserRepositoryImp(
          localDataSource: Get.find(),
          networkInfo: Get.find(),
          remoteDataSource: Get.find(),
        ));
    Get.lazyPut<UpdateUserUseCase>(() => UpdateUserUseCase(Get.find()));
    Get.lazyPut<UpdateAddressUseCase>(() => UpdateAddressUseCase(Get.find()));
    Get.lazyPut<GetAddressesUseCase>(() => GetAddressesUseCase(Get.find()));
    Get.lazyPut<AddAddressUseCase>(() => AddAddressUseCase(Get.find()));
    Get.lazyPut<RemoveAddressUseCase>(() => RemoveAddressUseCase(Get.find()));
    Get.lazyPut<GetUserUseCase>(() => GetUserUseCase(Get.find()));
    Get.lazyPut<UserController>(
      () => UserController(
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
        Get.find(),
      ),
    );
  }
}
