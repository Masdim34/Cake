// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeFeedsData {
  int? id;
  String title;
  String caption;
  String imageUrl;

  HomeFeedsData({
    this.id,
    this.title = 'Lorem',
    this.caption = 'Lorem ipsum dolor sit amet',
    required this.imageUrl,
  });
}

List<HomeFeedsData> homeFeeds = [
  HomeFeedsData(
    id: 1,
    imageUrl: AppAsset.homeitem1,
  ),
  HomeFeedsData(
    id: 2,
    imageUrl: AppAsset.homeitem2,
  )
];

class HomeFeeds extends StatelessWidget {
  const HomeFeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: homeFeeds.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    homeFeeds[index].title,
                    style:
                        Ts.headerStyle.titleMedium(color: AppColor.textColor),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(AppAsset.iconrightarrow)
                ],
              ),
              const SizedBox(
                height: 11,
              ),
              Image.asset(homeFeeds[index].imageUrl),
              const SizedBox(
                height: 12,
              ),
              Text(
                homeFeeds[index].caption,
                style: Ts.apptextStyle.sMedium(),
              ),
              const SizedBox(
                height: 32,
              )
            ],
          );
        });
  }
}
