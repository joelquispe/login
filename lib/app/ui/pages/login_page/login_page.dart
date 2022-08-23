import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roger/app/data/users.dart';
import 'package:roger/app/routes/app_routes.dart';
import 'package:roger/app/ui/global_widgets/WTextField.dart';
import '../../../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          title: Text('LoginPage'),
        ),
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                WTextField(false, TextInputType.text, "Username",
                    controller.controllerUsername.value, (value) {
                  if (value!.isEmpty) {
                    return "Llenar Campo de username";
                  } else {
                    return null;
                  }
                }),
                WTextField(true, TextInputType.number, "Password",
                    controller.controllerPassword.value, (value) {
                  if (value!.isEmpty) {
                    return "Llenar Campo de password";
                  } else if (value.contains(9.toString())) {
                    return "No permite número 9";
                  } else {
                    return null;
                  }
                }),
                ElevatedButton(
                    onPressed: () {
                     if (formKey.currentState!.validate()) {
                        users.forEach((element) {

                          if (element.username ==
                                  controller.controllerUsername.value.text &&
                              element.password ==
                                  controller.controllerPassword.value.text) {
                            Get.toNamed(Routes.HOME);
                          }
                        });
                        
                      }
                    },
                    child: Text("Ingresar")),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: Text("Registrarse"))
              ],
            ),
          ),
        ));
  }
}
