import 'package:baked_bliss/features/search/presentation/widget/search_product_card.dart';
import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const montagaFont = TextStyle(
      fontFamily: FontFamily.montaga,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    );
    const dmSansFont = TextStyle(
      fontFamily: FontFamily.dMSans,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: AppColors.grey,
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            TextField(
              style: montagaFont,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: montagaFont.copyWith(
                  color: AppColors.grey,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.clear)),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color.fromRGBO(243, 246, 248, 1),
                filled: true,
              ),
            ),
            const Divider(),
            const Text(
              'FOUND 50 RESULTS',
              style: dmSansFont,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 12 / 16,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemBuilder: (context, index) => const SearchProductCard(),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
