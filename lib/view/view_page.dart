import 'package:flutter/material.dart';
import 'package:stores/components/class_bestseller_card.dart';
import 'package:stores/components/class_main_banner.dart';
import 'package:stores/components/class_open.dart';
import 'package:stores/components/class_product_apple_conatiners.dart';
import 'package:stores/components/class_reklama.dart';
import 'package:stores/components/class_scroll_products.dart';
import 'package:stores/components/class_search.dart';
import 'package:stores/components/class_star.dart';
import 'package:stores/constants/app_colors.dart';
import 'package:stores/constants/app_text_style.dart';
import 'package:stores/constants/texts.dart';
import 'package:stores/model.dart';

class ViewStores extends StatefulWidget {
  const ViewStores({super.key});

  @override
  State<ViewStores> createState() => _ViewStoresState();
}

class _ViewStoresState extends State<ViewStores> {
  final String _storesLogo = 'assets/logo/Logo.png';
  final String _shape = 'assets/images/shape.png';
  final String _banner = 'assets/images/Баннер основной.png';
  final String _reklama = 'assets/images/Rectangle 230 (1).jpg';
  // Modeldeshuu
  final products = cards;
  final hits = items;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBgc,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 22, top: 30.74, right: 17, bottom: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(_storesLogo),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          AppTexts.text1,
                          style: AppTextStyle.textStyle,
                        ),
                        const SizedBox(height: 9),
                        Row(
                          children: const [
                            Stars(),
                            Stars(),
                            Stars(),
                            Stars(),
                            Stars(),
                            SizedBox(width: 4),
                            Text(
                              AppTexts.personKbStarText,
                              style: AppTextStyle.personsClickClass,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(width: 14),
                    const Open(),
                  ],
                ),
              ),
              // Издөө
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  children: [
                    const Search(),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(_shape),
                            const SizedBox(width: 10),
                            const Text(
                              AppTexts.licationText,
                              style: AppTextStyle.locationCityTextStyle,
                            ),
                          ],
                        ),
                        const Text(
                          AppTexts.enterDeliveryAddressText,
                          style: AppTextStyle.forAppTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    MainBannerImage(banner: _banner),
                  ],
                ),
              ),
              const SizedBox(height: 23),
              ScrollProducts(products: products),
              const SizedBox(height: 22),
              // ХИТ ПРОДАЖ
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(AppTexts.bestsellerText,
                        style: AppTextStyle.bestseller),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // ХИТ ПРОДАЖ КАНТЕЙНЕРЫ
              const BestsellerCard(),
              // ХИТ Реклама баннер
              const Reklama(56, double.infinity),
              const SizedBox(height: 22),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(
                  AppTexts.appleProductsText,
                  style: AppTextStyle.bestseller,
                ),
              ),
              const SizedBox(height: 16),
              const ProductsAppleContainers(),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(AppTexts.newText, style: AppTextStyle.forNew),
              ),
              const SizedBox(height: 16),
              const BestsellerCard(),
              const Reklama(56, double.infinity),
              const SizedBox(height: 22),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(AppTexts.productFromXiaomi,
                    style: AppTextStyle.forNew),
              ),
              const SizedBox(height: 16),
              const BestsellerCard(),
              const SizedBox(height: 6),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(AppTexts.clousesFromAdidas,
                    style: AppTextStyle.forNew),
              ),
              const SizedBox(height: 16),
              const ProductsAppleContainers(),
              const SizedBox(height: 22),
              const Reklama(80, double.infinity),
              const SizedBox(height: 22),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(AppTexts.menCloses, style: AppTextStyle.forNew),
              ),
              const SizedBox(height: 21),
              ScrollProducts(products: products),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 17),
                child: Text(AppTexts.skidka, style: AppTextStyle.forNew),
              ),
              const SizedBox(height: 16),
              const BestsellerCard(),
            ],
          ),
        ),
      ),
    );
  }
}
