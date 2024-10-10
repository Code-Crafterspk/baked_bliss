import 'package:baked_bliss/features/payment/presentation/widget/checkout_input_field.dart';
import 'package:baked_bliss/features/payment/presentation/widget/cvv_form.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/material.dart';

class CreditCardForm extends StatelessWidget {
  const CreditCardForm({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppConstants.cardNumber,
            style: textStyle,
          ),
          const SizedBox(height: 5),
          CheckoutInputField(
            controller: TextEditingController(),
            formatter: AppHelper.creditCardFormatter,
            keyboardType: TextInputType.phone,
          ),
          const SizedBox(height: 20),
          const Text(
            AppConstants.cardHolder,
            style: textStyle,
          ),
          const SizedBox(height: 5),
          CheckoutInputField(
            controller: TextEditingController(),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(AppConstants.expiryDate, style: textStyle),
                    const SizedBox(height: 5),
                    CheckoutInputField(
                      controller: TextEditingController(),
                      formatter: AppHelper.expiryDateFormatter,
                      keyboardType: TextInputType.phone,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              const CVVForm(),
            ],
          ),
        ],
      ),
    );
  }
}
