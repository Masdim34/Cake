import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final loginEmail = TextEditingController();
  final loginPassword = TextEditingController();

  bool isobscure = true;

  void toggleObscure() {
    isobscure = !isobscure;
    update();
  }
}
