import 'package:baked_bliss/assets/icons.dart';
import 'package:baked_bliss/common/widgets/primary_elevated_button.dart';
import 'package:baked_bliss/features/payment/presentation/widget/checkout_header.dart';
import 'package:baked_bliss/features/payment/presentation/widget/credit_card_form.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const greenColor = Color.fromRGBO(37, 212, 130, 1);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CheckoutHeader(),
            const CreditCardForm(),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                AppConstants.sendEmailAfterPayment,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryElevatedButton.icon(
                borderRadius: 16,
                onPressed: () {},
                icon: Image.asset(AssetsIcons.lock),
                color: greenColor,
                title: AppConstants.payForProduct,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
