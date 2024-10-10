import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/update_input_field.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class UpdateUserForm extends HookWidget {
  const UpdateUserForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final usernameController = useTextEditingController();
    final phoneNumberController = useTextEditingController();
    final controller = Get.find<UserController>();
    final formKey = GlobalKey<FormState>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Obx(
        () {
          if (controller.isLoadingUser.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          emailController.text = controller.user?.value?.email ?? '';
          usernameController.text = controller.user?.value?.fullName ?? '';
          phoneNumberController.text = controller.user?.value?.phoneNo ?? '';

          return Form(
            key: formKey,
            child: Column(
              children: [
                UpdateProfileInputField(
                  label: AppConstants.username,
                  controller: usernameController,
                  validator: AppHelper.nameValidator,
                ),
                UpdateProfileInputField(
                  label: AppConstants.emailId,
                  controller: emailController,
                  validator: AppHelper.emailValidator,
                  keyboardType: TextInputType.emailAddress,
                ),
                UpdateProfileInputField(
                  label: AppConstants.phoneNumber,
                  controller: phoneNumberController,
                  validator: AppHelper.phoneValidator,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: PrimaryFilledButton(
                    height: 50,
                    title: AppConstants.update,
                    onPressed: () {
                      if (!formKey.currentState!.validate()) return;
                      final user = controller.user;
                      if (user != null && user.value != null) {
                        final updatedUser = user.value!.copyWith(
                          email: emailController.text,
                          fullName: usernameController.text,
                          phoneNo: phoneNumberController.text,
                        );
                        controller.updateUser(updatedUser);
                      }
                    },
                    backgroundColor: AppColors.updateButtonColor,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
