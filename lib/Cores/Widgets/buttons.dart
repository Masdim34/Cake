// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';

class FullButton extends StatelessWidget {
  EdgeInsets? padding;
  String title;
  Widget? prefix;
  double? prefixSpacing;
  void Function()? onTap;

  FullButton({
    super.key,
    this.padding,
    required this.title,
    this.prefix,
    this.prefixSpacing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.mainColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: prefix,
            ),
            SizedBox(
              width: prefixSpacing,
            ),
            Text(title,
                style: Ts.apptextStyle.lMedium(color: AppColor.noColor)),
          ],
        ),
      ),
    );
  }
}

class HollowButton extends StatelessWidget {
  EdgeInsets? padding;

  String title;
  Widget? prefix;
  double? prefixSpacing;
  void Function()? onTap;

  bool hasborder;

  HollowButton({
    super.key,
    this.padding,
    required this.title,
    this.prefix,
    this.prefixSpacing,
    this.onTap,
    this.hasborder = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: hasborder ? AppColor.mainColor : Colors.transparent),
          borderRadius: BorderRadius.circular(20),
          color: AppColor.noColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: prefix,
            ),
            SizedBox(
              width: prefixSpacing,
            ),
            Text(title,
                style: Ts.apptextStyle.lMedium(color: AppColor.mainColor)),
          ],
        ),
      ),
    );
  }
}
