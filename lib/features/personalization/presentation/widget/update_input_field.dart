import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class UpdateProfileInputField extends StatelessWidget {
  const UpdateProfileInputField({
    super.key,
    required this.label,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.validator,
  });
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color.fromRGBO(169, 169, 169, 1),
        width: 1,
      ),
    );
    const poppinsFont = TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: poppinsFont,
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          validator: validator,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            isDense: true,
            border: border,
            focusedBorder: border,
            enabledBorder: border,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
