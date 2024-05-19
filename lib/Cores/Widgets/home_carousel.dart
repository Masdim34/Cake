// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cake/Cores/Values/app_colors.dart';
// ignore: unused_import
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Features/Home/home_controller.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return CarouselSlider.builder(
      itemCount: homeCarouselImage.length,
      itemBuilder: (context, index, realIndex) {
        return Column(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColor.itemBackgroundColor),
              child: Image.asset(homeCarouselImage[index].image),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              homeCarouselImage[index].cakeName,
              style: Ts.apptextStyle.xsMedium(),
            )
          ],
        );
      },
      options: CarouselOptions(
          height: 100,
          pageSnapping: true,
          viewportFraction: 0.25,
          enableInfiniteScroll: true,
          padEnds: false),
    );
  }
}
