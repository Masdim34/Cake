// ignore_for_file: unnecessary_import

import 'package:cake/Cores/Routes/routes.dart';
import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Features/Home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomBotNavBar extends StatelessWidget {
  const CustomBotNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return GetBuilder<HomeController>(builder: (controller) {
      return Container(
        width: Get.width,
        height: 91,
        decoration: const BoxDecoration(
            color: AppColor.noColor,
            border: Border(
                top: BorderSide(width: 1, color: AppColor.botnavbarBorder))),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 8.0, left: 18, right: 18, bottom: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  int index = 0;
                  homeController.navbarIndexChange(index);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(AppAsset.iconhome,
                        colorFilter: homeController.navbarIndex == 0
                            ? const ColorFilter.mode(
                                AppColor.mainColor, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                AppColor.textColor, BlendMode.srcIn)),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Home',
                      style: Ts.apptextStyle.xsRegular(
                          color: homeController.navbarIndex == 0
                              ? AppColor.mainColor
                              : AppColor.textColor),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  int index = 1;
                  homeController.navbarIndexChange(index);

                  Get.toNamed(CakeRoutes.explore);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(AppAsset.iconactivities,
                        colorFilter: homeController.navbarIndex == 1
                            ? const ColorFilter.mode(
                                AppColor.mainColor, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                AppColor.textColor, BlendMode.srcIn)),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Activities',
                      style: Ts.apptextStyle.xsRegular(
                          color: homeController.navbarIndex == 1
                              ? AppColor.mainColor
                              : AppColor.textColor),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  int index = 2;
                  homeController.navbarIndexChange(index);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(AppAsset.iconmessages,
                        colorFilter: homeController.navbarIndex == 2
                            ? const ColorFilter.mode(
                                AppColor.mainColor, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                AppColor.textColor, BlendMode.srcIn)),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Messages',
                      style: Ts.apptextStyle.xsRegular(
                          color: homeController.navbarIndex == 2
                              ? AppColor.mainColor
                              : AppColor.textColor),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  int index = 3;
                  homeController.navbarIndexChange(index);
                },
                child: Column(
                  children: [
                    SvgPicture.asset(AppAsset.iconuser,
                        colorFilter: homeController.navbarIndex == 3
                            ? const ColorFilter.mode(
                                AppColor.mainColor, BlendMode.srcIn)
                            : const ColorFilter.mode(
                                AppColor.textColor, BlendMode.srcIn)),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'User',
                      style: Ts.apptextStyle.xsRegular(
                          color: homeController.navbarIndex == 3
                              ? AppColor.mainColor
                              : AppColor.textColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
