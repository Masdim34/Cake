// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import, unnecessary_import
import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Features/Auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AppSearchBar extends StatelessWidget {
  String? hinttext;

  TextEditingController? controller;

  AppSearchBar({
    super.key,
    this.hinttext,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColor.searchbarBorder),
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFFFEFE),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(top: 2),
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: Ts.apptextStyle.mMedium(),
            icon: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: SvgPicture.asset(AppAsset.iconsearch),
            )),
      ),
    );
  }
}
