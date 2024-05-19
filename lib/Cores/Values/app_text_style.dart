// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cake/Cores/Values/app_colors.dart';

class Ts {
  static ApptextStyle apptextStyle = ApptextStyle();
  static HeaderStyle headerStyle = HeaderStyle();
}

class ApptextStyle {
  // Extra Small (12px)
  TextStyle xslight({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w300,
      fontSize: 12,
      color: color ?? AppColor.textColor);

  TextStyle xsRegular({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: color ?? AppColor.textColor);

  TextStyle xsMedium({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: color ?? AppColor.textColor);

  // Small (16 px)
  TextStyle slight({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w300,
      fontSize: 16,
      color: color ?? AppColor.textColor);

  TextStyle sRegular({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: color ?? AppColor.textColor);

  TextStyle sMedium({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: color ?? AppColor.textColor);

  // Medium (18 px)
  TextStyle mlight({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w300,
      fontSize: 18,
      color: color ?? AppColor.textColor);

  TextStyle mRegular({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 18,
      color: color ?? AppColor.textColor);

  TextStyle mMedium({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 18,
      color: color ?? AppColor.textColor);

  // Large (20 px)
  TextStyle llight({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w300,
      fontSize: 20,
      color: color ?? AppColor.textColor);

  TextStyle lRegular({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      fontSize: 20,
      color: color ?? AppColor.textColor);

  TextStyle lMedium({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: color ?? AppColor.textColor);
}

class HeaderStyle {
  // Title (w700)
  TextStyle titleLarge({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 32,
      color: color ?? AppColor.mainColor);

  TextStyle titleMedium({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: color ?? AppColor.mainColor);

  TextStyle titleSmall({Color? color}) => TextStyle(
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      fontSize: 16,
      color: color ?? AppColor.mainColor);
}
