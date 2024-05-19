// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Features/LandingPage/landing_page_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cake/Cores/Values/assets.dart';

class LandingCarousel extends StatelessWidget {
  const LandingCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final LandingController landingController = Get.find();
    return CarouselSlider.builder(
        carouselController: landingController.carouselController,
        itemCount: carouselImages.length,
        itemBuilder: (context, index, realIndex) {
          return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                carouselImages[index].image,
                width: 350,
                height: 259,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Lorem', style: Ts.headerStyle.titleLarge()),
                const SizedBox(height: 11),
                Text(
                  'lorem ipsum dolor sit amet, consectur adipiscing elit, imperdiet elit massa arcu mauris facilis mattis.',
                  style: Ts.apptextStyle.lMedium(),
                  textAlign: TextAlign.center,
                )
              ],
            )
          ]);
        },
        options: CarouselOptions(
          height: 500,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: false,
          enlargeCenterPage: false,
          pageSnapping: true,
          clipBehavior: Clip.none,
          onPageChanged: (index, reason) {
            landingController.onPageChanged(index);
          },
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
