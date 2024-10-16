import 'package:baked_bliss/features/home/data/data_source/local/category_local_data_source.dart';
import 'package:baked_bliss/features/home/data/data_source/remote/cateory_remote_data_source.dart';
import 'package:baked_bliss/features/home/data/repository/category_repository_imp.dart';
import 'package:baked_bliss/features/home/domain/repository/category_repository.dart';
import 'package:baked_bliss/features/home/presentation/controller/category_controller.dart';
import 'package:get/get.dart';

class CategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..put(CategoryRemoteDataSource(
        Get.find(),
      ))
      ..put(CategoryLocalDataSource(
        Get.find(),
      ))
      ..put<CategoryRepository>(CategoryRepositoryImp(
        Get.find(),
        Get.find(),
        Get.find(),
      ))
      ..put(CategoryController(
        Get.find(),
      ));
  }
}
