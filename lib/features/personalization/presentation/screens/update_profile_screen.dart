import 'package:baked_bliss/features/personalization/presentation/widget/profile_background.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/profile_image.dart';
import 'package:baked_bliss/features/personalization/presentation/widget/update_user_form.dart';
import 'package:baked_bliss/features/shared/presentation/controller/user_controller.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const poppinsFont = TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
    final controller = Get.find<UserController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 350,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  const ProfileBackground(showBackBtn: true),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ProfileImage(
                          height: 150,
                          width: 150,
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            _pickImage().then((value) {
                              if (value == null) return;
                              controller.updateProfileImage(value);
                            });
                          },
                          child: const Text(
                            AppConstants.changePicture,
                            style: poppinsFont,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const UpdateUserForm(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Future<String?> _pickImage() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.gallery);
      return pickedFile?.path;
    } catch (e) {
      return null;
    }
  }
}
