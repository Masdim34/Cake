// ignore_for_file: unused_import, unnecessary_import

import 'dart:math';

import 'package:cake/Cores/Routes/routes.dart';
import 'package:cake/Cores/Values/app_colors.dart';
import 'package:cake/Cores/Values/app_text_style.dart';
import 'package:cake/Cores/Values/assets.dart';
import 'package:cake/Cores/Widgets/app_form.dart';
import 'package:cake/Cores/Widgets/buttons.dart';
import 'package:cake/Features/Auth/login/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return GetBuilder<LoginController>(
      builder: (_) {
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36, vertical: 49),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back',
                          style: Ts.headerStyle.titleLarge(),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style: Ts.apptextStyle.slight(),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Form(
                          child: Column(
                            children: [
                              CakeForm(
                                label: 'Email Address',
                                controller: loginController.loginEmail,
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              CakeForm(
                                label: 'Password',
                                isPassword: true,
                                controller: loginController.loginPassword,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.toNamed('ForgotPassword');
                              },
                              child: Text(
                                'Forgot Password?',
                                style: Ts.apptextStyle
                                    .mMedium(color: AppColor.mainColor),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        FullButton(
                          onTap: () {
                            Get.toNamed(CakeRoutes.home);
                          },
                          title: 'Login',
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text('Or', style: Ts.apptextStyle.mMedium()),
                        const SizedBox(
                          height: 24,
                        ),
                        HollowButton(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          hasborder: true,
                          title: 'Login with Google',
                          prefixSpacing: 10,
                          prefix: SvgPicture.asset(AppAsset.icongoogle),
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Text.rich(TextSpan(children: [
                          TextSpan(
                              text: 'Don’t have an account? ',
                              style: Ts.apptextStyle
                                  .mMedium(color: AppColor.textColor)),
                          TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed(CakeRoutes.signup);
                                },
                              text: 'Sign Up',
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
      },
    );
  }
}
