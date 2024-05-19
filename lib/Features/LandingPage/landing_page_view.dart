// ignore_for_file: unused_import

import 'dart:math';

import 'package:cake/Cores/Routes/routes.dart';
import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Cores/Widgets/app_form.dart';
import 'package:cake/Cores/Widgets/buttons.dart';
import 'package:cake/Cores/Widgets/landing_carousel.dart';
import 'package:cake/Cores/Widgets/search_bar.dart';
import 'package:cake/Features/LandingPage/landing_page_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatelessWidget {
  LandingController landingController = Get.put(LandingController());
  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Transform.rotate(
                angle: 15 * pi / 180,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppAsset.background1),
                          opacity: 0.25,
                          fit: BoxFit.fill)),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                  child: Column(
                    children: [
                      const LandingCarousel(),
                      const SizedBox(
                        height: 10,
                      ),
                      AnimatedSmoothIndicator(
                        activeIndex: landingController.carouselIndex,
                        count: carouselImages.length,
                        effect: const WormEffect(
                            activeDotColor: AppColor.mainColor,
                            dotHeight: 12,
                            dotWidth: 12),
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      landingController.carouselIndex == 2
                          ? FullButton(
                              onTap: () {
                                Get.toNamed(CakeRoutes.login);
                              },
                              title: "Let's Get Started",
                              padding: const EdgeInsets.symmetric(vertical: 16),
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                HollowButton(
                                  title: 'Skip',
                                  onTap: () {
                                    landingController.carouselController
                                        .jumpToPage(2);
                                    landingController.carouselSkip();
                                  },
                                ),
                                FullButton(
                                  onTap: () {
                                    landingController.carouselController
                                        .nextPage();
                                    landingController.carouselNext();
                                  },
                                  title: 'Next',
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 43),
                                )
                              ],
                            )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
