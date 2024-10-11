import 'package:baked_bliss/assets/images.dart';
import 'package:baked_bliss/common/model/category/category_model.dart';
import 'package:baked_bliss/common/model/ingredient/ingredient_model.dart';
import 'package:baked_bliss/common/model/product/product_model.dart';
import 'package:baked_bliss/features/home/presentation/widget/category_builder.dart';
import 'package:baked_bliss/features/home/presentation/widget/home_header.dart';
import 'package:baked_bliss/features/home/presentation/widget/offer_builder.dart';
import 'package:baked_bliss/features/home/presentation/widget/product_builder.dart';
import 'package:baked_bliss/features/home/presentation/widget/search_field.dart';
import 'package:baked_bliss/features/personalization/presentation/screens/main_menu_screen.dart';
import 'package:baked_bliss/utils/constant/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: const Drawer(
        child: MainMenuScreen(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu)),
            const HomeHeader(),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SearchField(),
                  const CategoryBuilder(),
                  const OfferBuilder(),
                  const SizedBox(height: 20),
                  ProductBuilder(
                    productList: productList,
                    title: 'Discover other dishes',
                  ),
                  ProductBuilder(
                    productList: productList,
                    title: 'We recommend',
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final productList = [
  ProductModel(
      productId: '1',
      title: 'Egg Toast',
      thumbnail: AssetsImages.eggToast,
      price: 10.40,
      category: const CategoryModel(
        id: 1,
        name: 'Breakfast',
        image: AssetsImages.egg,
      ),
      description: 'Egg toast is a simple breakfast recipe',
      ratingCount: 36,
      rating: 4.5,
      ingredient: [
        const IngredientModel(
          id: 1,
          name: 'Egg',
          image: AssetsImages.egg,
          quantity: '2',
        ),
        const IngredientModel(
          id: 2,
          name: 'Bread',
          image: AssetsImages.bread,
          quantity: '2',
        ),
        const IngredientModel(
          id: 3,
          name: 'Butter',
          image: AssetsImages.butter,
          quantity: '1',
        ),
      ],
      tagline: 'Start your day with a healthy breakfast',
      images: [
        AssetsImages.productImage1,
        AssetsImages.productImage2,
        AssetsImages.productImage3,
        AssetsImages.productImage4,
      ]),
  ProductModel(
    productId: '2',
    title: 'Power Bowl',
    thumbnail: AssetsImages.powerBowl,
    price: 14.10,
    category: const CategoryModel(
      id: 2,
      name: 'Lunch',
      image: AssetsImages.vegetableSalad,
    ),
    description: 'Power bowl is a healthy lunch recipe',
    ratingCount: 36,
    rating: 4.8,
    ingredient: [
      const IngredientModel(
        id: 2,
        name: 'Chicken',
        image: AssetsImages.chicken,
        quantity: '1',
      ),
      const IngredientModel(
        id: 3,
        name: 'Butter',
        image: AssetsImages.butter,
        quantity: '1',
      ),
    ],
    tagline: 'Healthy and tasty lunch recipe',
    images: [
      AssetsImages.productImage1,
      AssetsImages.productImage2,
      AssetsImages.productImage3,
      AssetsImages.productImage4,
    ],
  ),
  ProductModel(
    productId: '3',
    title: 'Curry Salmon',
    thumbnail: AssetsImages.currySalmom,
    price: 16.40,
    category: const CategoryModel(
      id: 3,
      name: 'Dinner',
      image: AssetsImages.chickenSalad,
    ),
    description: 'Curry salmon is a delicious dinner recipe',
    ratingCount: 36,
    rating: 4.8,
    ingredient: [
      const IngredientModel(
        id: 1,
        name: 'Salmon',
        image: AssetsImages.chicken,
        quantity: '2',
      ),
      const IngredientModel(
        id: 2,
        name: 'Curry',
        image: AssetsImages.greekSalad,
        quantity: '1',
      ),
      const IngredientModel(
        id: 3,
        name: 'Vegetable',
        image: AssetsImages.vegetableSalad,
        quantity: '1',
      ),
    ],
    tagline: 'Delicious dinner recipe',
    images: [
      AssetsImages.productImage1,
      AssetsImages.productImage2,
      AssetsImages.productImage3,
      AssetsImages.productImage4,
    ],
  ),
];
