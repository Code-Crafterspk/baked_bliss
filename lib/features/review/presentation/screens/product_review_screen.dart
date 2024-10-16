import 'package:baked_bliss/common/widgets/primary_filled_button.dart';
import 'package:baked_bliss/features/review/presentation/widget/product_rating_card.dart';
import 'package:baked_bliss/features/review/presentation/widget/product_review_card.dart';
import 'package:baked_bliss/utils/constant/app_constants.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Row(
                  children: [
                    InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 25,
                        width: 25,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Text(
                          String.fromCharCode(
                              Icons.arrow_back_ios_new.codePoint),
                          style: TextStyle(
                            inherit: false,
                            color: AppColors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: Icons.arrow_back_ios_new.fontFamily,
                            package: Icons.arrow_back_ios_new.fontPackage,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      AppConstants.reviewDetails,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(
                      child: ProductRatingCard(),
                    ),
                    SliverList.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemBuilder: (context, index) {
                        return const Padding(
                            padding: EdgeInsets.symmetric(vertical: 15),
                            child: ProductReviewCard());
                      },
                    ),
                  ],
                ),
              ),
              PrimaryFilledButton(
                title: AppConstants.writeReview,
                backgroundColor: AppColors.addToCartButtonBg,
                onPressed: () {},
                height: 50,
                borderRadius: 8,
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
