import 'package:baked_bliss/utils/enums/enums.dart';
import 'package:baked_bliss/utils/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class AppHelper {
  static MaskTextInputFormatter get creditCardFormatter =>
      MaskTextInputFormatter(
        mask: '#### #### #### ####',
        filter: {"#": RegExp(r'[0-9]')},
      );
  static MaskTextInputFormatter get expiryDateFormatter =>
      MaskTextInputFormatter(
        mask: '## / 20##',
        filter: {"#": RegExp(r'[0-9]')},
      );

  static MaskTextInputFormatter get cvvFormatter => MaskTextInputFormatter(
        mask: '###',
        filter: {"#": RegExp(r'[0-9]')},
      );
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    final regPassword = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
    if (!regPassword.hasMatch(value)) {
      return 'Password must contain at least one uppercase letter, one lowercase letter, one number and one special character';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    final regEmail =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    if (!regEmail.hasMatch(value)) {
      return 'Invalid email address';
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    final regName = RegExp(r'^[a-zA-Z ]+$');
    if (!regName.hasMatch(value)) {
      return 'Name must contain only alphabets';
    }
    return null;
  }

  static String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    final regPhone = RegExp(r'^[0-9]{10}$');
    if (!regPhone.hasMatch(value)) {
      return 'Invalid phone number';
    }
    return null;
  }

  static void showCustomSnackBar(
      BuildContext context, String message, SnackBarType type) {
    final snackBar = SnackBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Text(message, style: const TextStyle(color: Colors.white)),
      backgroundColor: type.color,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 3),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
