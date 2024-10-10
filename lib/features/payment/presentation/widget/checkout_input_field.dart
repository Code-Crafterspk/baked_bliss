import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CheckoutInputField extends StatelessWidget {
  const CheckoutInputField({
    super.key,
    required this.controller,
    this.hintText,
    this.validator,
    this.keyboardType = TextInputType.number,
    this.trialing,
    this.formatter,
  });
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Widget? trialing;
  final MaskTextInputFormatter? formatter;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    );
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      inputFormatters: [
        formatter ?? MaskTextInputFormatter(mask: ''),
      ],
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: const EdgeInsets.all(20),
        border: border,
        enabledBorder: border,
        focusedBorder: border,
        filled: true,
        fillColor: AppColors.lightGrey,
      ),
    );
  }
}
