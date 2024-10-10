import 'package:baked_bliss/common/widgets/rounded_container.dart';
import 'package:baked_bliss/features/payment/presentation/widget/checkout_input_field.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:baked_bliss/utils/helper/helper.dart';
import 'package:flutter/material.dart';

class CVVForm extends StatelessWidget {
  const CVVForm({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
    const greenColor = AppColors.checkOutScreenPrimary;
    final key = GlobalKey();
    final overLayController = OverlayPortalController();

    return Expanded(
      child: Column(
        children: [
          Row(
            children: [
              const Text(AppConstants.cvv, style: textStyle),
              const SizedBox(width: 20),
              OverlayPortal(
                key: key,
                controller: overLayController,
                overlayChildBuilder: (context) {
                  final renderBox =
                      key.currentContext!.findRenderObject() as RenderBox;
                  final size = renderBox.size;
                  final offset = renderBox.localToGlobal(Offset.zero);
                  return Positioned(
                    top: offset.dy + size.height - 80,
                    left: offset.dx - 75,
                    child: const RoundedContainer(
                      padding: EdgeInsets.all(5),
                      width: 150,
                      borderRadius: 9,
                      child: Text(
                        'The CVV/CVC is a 3 or 4-digit code on the back of your card.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    overLayController.toggle();
                  },
                  child: RoundedContainer(
                    height: 18,
                    width: 18,
                    color: greenColor.withOpacity(0.15),
                    borderRadius: 9,
                    child: const Text(
                      '?',
                      style: TextStyle(
                        color: greenColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          CheckoutInputField(
            controller: TextEditingController(),
            formatter: AppHelper.cvvFormatter,
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
    );
  }
}
