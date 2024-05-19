import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Cores/Widgets/explore_grid.dart';
import 'package:cake/Cores/Widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        left: 35.5, right: 35.5, top: 68, bottom: 20),
                    decoration: const BoxDecoration(color: AppColor.mainColor),
                    height: 136,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 80),
                    child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(AppAsset.iconleftarrow)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 35, top: 110, right: 35),
                    child: AppSearchBar(
                      hinttext: 'Find cake or places',
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 47.0, horizontal: 43),
                child: ExploreGrid(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
