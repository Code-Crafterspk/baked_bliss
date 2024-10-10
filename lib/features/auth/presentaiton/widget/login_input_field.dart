import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class LoginInputField extends StatelessWidget {
  const LoginInputField({
    super.key,
    required this.controller,
    this.validator,
    this.obscureText = false,
    this.isPassword = false,
  });
  final TextEditingController controller;
  final String? Function(String? value)? validator;
  final bool obscureText;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.red),
    );

    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 53,
            child: Card(
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: Colors.white,
              elevation: 5,
            ),
          ),
          TextFormField(
            controller: controller,
            validator: validator,
            obscureText: obscureText,
            decoration: InputDecoration(
              // isDense: true,
              border: InputBorder.none,
              errorBorder: errorBorder,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              suffixIcon: isPassword
                  ? IconButton(
                      icon: Icon(
                        obscureText ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Get.find<AuthController>().toggleShowPasswordLogin();
                      },
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
