import 'package:cake/Cores/Values/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  final searchController = TextEditingController();
  final carouselController = CarouselController();
  int navbarIndex = 0;
  void navbarIndexChange(int index) {
    navbarIndex = index;
    update();
  }
}

class HomeCarouselImages {
  String image;
  String cakeName;
  HomeCarouselImages({
    required this.image,
    required this.cakeName,
  });
}

List<HomeCarouselImages> homeCarouselImage = [
  HomeCarouselImages(image: AppAsset.buttercake, cakeName: 'Buttercake'),
  HomeCarouselImages(image: AppAsset.chiffon, cakeName: 'Chiffon'),
  HomeCarouselImages(image: AppAsset.sponge, cakeName: 'Sponge'),
  HomeCarouselImages(image: AppAsset.poundcake, cakeName: 'Poundcake'),
];
