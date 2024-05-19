// ignore_for_file: unused_import, unnecessary_import

import 'dart:math';

import 'package:cake/Cores/Routes/routes.dart';
import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Cores/Widgets/app_form.dart';
import 'package:cake/Cores/Widgets/buttons.dart';
import 'package:cake/Features/Auth/signup/signup_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupView extends StatelessWidget {
  SignupController signupController = Get.put(SignupController());
  SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(builder: (_) {
      return Stack(
        children: [
          Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                opacity: 0.25,
                image: AssetImage(AppAsset.background2),
                fit: BoxFit.fitWidth,
              )),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 49, horizontal: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign Up',
                        style: Ts.headerStyle.titleLarge(),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                        style: Ts.apptextStyle.slight(),
                      ),
                      Form(
                          child: Column(
                        children: [
                          CakeForm(
                            label: 'Name',
                            controller: signupController.signupName,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          CakeForm(
                            label: 'Email',
                            controller: signupController.signupEmail,
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          CakeForm(
                            label: 'Password',
                            controller: signupController.signupPassword,
                            isPassword: true,
                          ),
                        ],
                      )),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text.rich(TextSpan(
                              style: Ts.apptextStyle
                                  .sMedium(color: AppColor.mainColor),
                              children: [
                                TextSpan(
                                    text: 'I agree to the ',
                                    style: Ts.apptextStyle.sMedium()),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed('Toc');
                                      },
                                    text: 'Terms of Service'),
                                TextSpan(
                                    text: ' and \n',
                                    style: Ts.apptextStyle.sMedium()),
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.toNamed('Toc');
                                      },
                                    text: 'Privacy Policy')
                              ]))
                        ],
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      FullButton(
                        title: 'Create Account',
                        onTap: () {
                          Get.toNamed(CakeRoutes.home);
                        },
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: 'Already have an account? ',
                            style: Ts.apptextStyle
                                .mMedium(color: AppColor.textColor)),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(CakeRoutes.login);
                              },
                            text: 'Login',
                            style: Ts.apptextStyle
                                .mMedium(color: AppColor.mainColor))
                      ]))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
