import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/widgets/custom_back_button.dart';
import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: CustomBackButton(
                color: Color.fromRGBO(90, 108, 243, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(AssetsImages.paymentSuccess)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                children: [
                  const Text(
                    AppConstants.paymentSuccess,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(54, 54, 54, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    AppConstants.paymentSuccessDescription,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(54, 54, 54, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          AppConstants.checkDetails,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: AppColors.paymentSuccessScreenPrimary,
                          ),
                        ),
                        Icon(Icons.arrow_forward,
                            color: AppColors.paymentSuccessScreenPrimary),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: PrimaryFilledButton(
                title: AppConstants.downloadInvoice,
                onPressed: () {},
                backgroundColor: AppColors.paymentSuccessScreenPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
