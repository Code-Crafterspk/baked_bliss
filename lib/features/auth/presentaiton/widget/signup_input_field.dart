import 'package:baked_bliss/features/auth/presentaiton/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class SignUpInputField extends StatelessWidget {
  const SignUpInputField({
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
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: BorderSide.none,
    );
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: InputBorder.none,
        isDense: true,
        fillColor: const Color.fromRGBO(248, 248, 248, 1),
        filled: true,
        enabledBorder: border,
        focusedBorder: border,
        focusedErrorBorder: border,
        errorBorder:
            border.copyWith(borderSide: const BorderSide(color: Colors.red)),
        contentPadding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  Get.find<AuthController>().toggleShowPasswordSignup();
                },
              )
            : null,
      ),
    );
  }
}
