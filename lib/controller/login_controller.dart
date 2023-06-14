import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController(text: 'abc@gmail.com');
  final TextEditingController passwordTextController = TextEditingController(text: '123456');

}
