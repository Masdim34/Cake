// ignore_for_file: unused_import, unused_local_variable, unnecessary_import

import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Cores/Widgets/custom_botnavbar.dart';
import 'package:cake/Cores/Widgets/home_carousel.dart';
import 'package:cake/Cores/Widgets/home_feeds.dart';
import 'package:cake/Cores/Widgets/search_bar.dart';
import 'package:cake/Features/Home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 35.5, right: 35.5, top: 68, bottom: 20),
                  decoration: const BoxDecoration(color: AppColor.mainColor),
                  height: 136,
                  child: AppSearchBar(
                    hinttext: 'Find cake or places',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 42),
                  child: Column(
                    children: [
                      HomeCarousel(),
                      SizedBox(
                        height: 44,
                      ),
                      HomeFeeds()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 98,
                )
              ],
            ),
          ),
          const CustomBotNavBar()
        ],
      )),
    );
  }
}
