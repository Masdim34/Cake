// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Features/Auth/login/login_controller.dart';

class CakeForm extends StatelessWidget {
  LoginController loginController = Get.put(LoginController());
  String? hinttext;
  String label;
  FocusNode? focusNode;
  TextEditingController? controller;
  bool isPassword = false;

  CakeForm({
    super.key,
    this.hinttext,
    this.label = 'insert label',
    this.focusNode,
    this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: Ts.apptextStyle.mMedium(),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
              color: AppColor.formColor,
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
              controller: controller,
              obscureText: loginController.isobscure,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                suffixIconConstraints:
                    const BoxConstraints(maxHeight: 25, maxWidth: 49),
                suffixIcon: isPassword
                    ? Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: GestureDetector(
                            onTap: () {
                              loginController.toggleObscure();
                            },
                            child: SvgPicture.asset(AppAsset.iconeye)),
                      )
                    : const SizedBox(),
                hintText: label,
                hintStyle: Ts.apptextStyle.mMedium(),
                border: InputBorder.none,
              ),
              showCursor: false),
        ),
      ],
    );
  }
}
