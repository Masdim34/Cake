import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final signupEmail = TextEditingController();
  final signupPassword = TextEditingController();
  final signupName = TextEditingController();

  bool isobscure = true;
  void toggleObscure() {
    isobscure = !isobscure;
    update();
  }
}
