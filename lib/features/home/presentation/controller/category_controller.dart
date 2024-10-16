import 'package:baked_bliss/features/cart/domain/usecases/get_cart_count.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CategoryController extends GetxController {
  final GetCartCountUseCase _getCartCountUseCase;
  CategoryController(this._getCartCountUseCase);
}
