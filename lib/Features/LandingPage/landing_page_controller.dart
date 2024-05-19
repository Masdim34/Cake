import 'package:cake/Cores/Values/assets.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/material.dart';

class LandingController extends GetxController {
  final carouselController = CarouselController();
  final pageController = PageController();
  int carouselIndex = 0;
  void onPageChanged(int index) {
    carouselIndex = index;
    update();
  }

  void carouselNext() {
    carouselIndex++;
    update();
  }

  void carouselSkip() {
    carouselIndex = 2;
    update();
  }
}

class LandingCarouselImages {
  String image;
  LandingCarouselImages({
    required this.image,
  });
}

List<LandingCarouselImages> carouselImages = [
  LandingCarouselImages(image: AppAsset.landingpage1),
  LandingCarouselImages(image: AppAsset.landingpage2),
  LandingCarouselImages(image: AppAsset.landingpage3),
];
