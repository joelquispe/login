
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:roger/app/data/models/user.dart';

class RegisterController extends GetxController {
  Rx<TextEditingController> controllerUsername = TextEditingController().obs;
  Rx<TextEditingController> controllerPassword = TextEditingController().obs;
  User user = new User();
}
  