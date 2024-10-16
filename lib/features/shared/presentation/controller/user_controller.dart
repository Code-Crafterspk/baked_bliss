import 'package:baked_bliss/common/model/address/address_model.dart';
import 'package:baked_bliss/common/model/user/user_model.dart';
import 'package:baked_bliss/common/usecase/usecase.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/add_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/get_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/get_user.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/remove_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/update_address.dart';
import 'package:baked_bliss/features/shared/domain/usecases/user/update_user.dart';
import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final GetUserUseCase _getUser;
  final UpdateUserUseCase _updateUser;
  final UpdateAddressUseCase _updateAddress;
  final GetAddressesUseCase _getAddresses;
  final AddAddressUseCase _addAddress;
  final RemoveAddressUseCase _removeAddress;

  UserController(
    this._getUser,
    this._updateUser,
    this._updateAddress,
    this._getAddresses,
    this._addAddress,
    this._removeAddress,
  );

  final RxBool _isLoadingUser = false.obs;
  final RxBool _isUpdatingImage = false.obs;
  RxBool get isLoadingUser => _isLoadingUser;
  RxBool get isLoadingImage => _isUpdatingImage;

  Rx<UserModel?> _user = Rxn<UserModel?>();
  final RxList<AddressModel> _addresses = <AddressModel>[].obs;

  Rx<UserModel?>? get user => _user;
  List<AddressModel> get addresses => _addresses.toList();

  Future<void> _setLoading(bool loading) async {
    _isLoadingUser.value = loading;
  }

  Future<void> getUser() async {
    await _setLoading(true);
    final result = await _getUser(NoParams());
    result.fold(
      (failure) => AppHelper.showCustomSnackBar(
          Get.context!, failure.message, SnackBarType.error),
      (user) => _user = user.obs,
    );
    await _setLoading(false);
  }

  Future<void> updateUser(UserModel user) async {
    final result = await _updateUser(user);
    result.fold(
      (failure) => AppHelper.showCustomSnackBar(
          Get.context!, failure.message, SnackBarType.error),
      (_) {
        _user.value = user;
        AppHelper.showCustomSnackBar(
            Get.context!, 'User updated successfully', SnackBarType.success);
      },
    );
  }

  Future<void> updateProfileImage(String profileImage) async {
    final updatedUser = user?.value?.copyWith(imageUrl: profileImage);
    if (updatedUser != null) {
      await updateUser(updatedUser);
      await getUser(); // Refresh user data
      AppHelper.showCustomSnackBar(Get.context!,
          'Profile image updated successfully', SnackBarType.success);
    }
  }

  Future<void> updateAddress(AddressModel address) async {
    final result = await _updateAddress(UpdateAddressParms(
      address: address,
      userId: user!.value!.userId,
    ));
    result.fold(
      (failure) => AppHelper.showCustomSnackBar(
          Get.context!, failure.message, SnackBarType.error),
      (_) {
        _user.value = user!.value!.copyWith(addresses: [address, ...addresses]);
        AppHelper.showCustomSnackBar(
            Get.context!, 'Address updated successfully', SnackBarType.success);
      },
    );
  }

  Future<void> getAddresses() async {
    final result =
        await _getAddresses(GetAddressParms(userId: user!.value!.userId));
    result.fold(
      (failure) => AppHelper.showCustomSnackBar(
          Get.context!, failure.message, SnackBarType.error),
      (addresses) => _addresses.assignAll(addresses),
    );
  }

  Future<void> addAddress(AddressModel address) async {
    final result = await _addAddress(AddAddressParms(
      address: address,
      userId: user!.value!.userId,
    ));
    result.fold(
      (failure) => AppHelper.showCustomSnackBar(
          Get.context!, failure.message, SnackBarType.error),
      (_) {
        _user.value = user!.value!.copyWith(addresses: [address, ...addresses]);
        AppHelper.showCustomSnackBar(
            Get.context!, 'Address added successfully', SnackBarType.success);
      },
    );
  }

  Future<void> removeAddress(AddressModel address) async {
    final result = await _removeAddress(RemoveAddressParms(
      address: address,
      userId: user!.value!.userId,
    ));
    result.fold(
      (failure) => AppHelper.showCustomSnackBar(
          Get.context!, failure.message, SnackBarType.error),
      (_) {
        _addresses.removeWhere((a) => a.addressId == address.addressId);
        _user.value = user!.value!.copyWith(addresses: addresses);
        AppHelper.showCustomSnackBar(
            Get.context!, 'Address removed successfully', SnackBarType.success);
      },
    );
  }

  @override
  void onInit() {
    getUser();
    super.onInit();
  }
}
