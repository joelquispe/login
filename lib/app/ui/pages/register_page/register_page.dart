import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roger/app/data/users.dart';
import 'package:roger/app/routes/app_routes.dart';
import 'package:roger/app/ui/global_widgets/WTextField.dart';
import '../../../controllers/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: AppBar(
          title: Text('RegisterPage'),
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
                      controller.user.username =
                          controller.controllerUsername.value.text;
                      controller.user.password =
                          controller.controllerPassword.value.text;

                      if (formKey.currentState!.validate()) {
                        users.add(controller.user);
                        print("agregado");
                      }
                    },
                    child: Text("Registrarse")),
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.LOGIN);
                    },
                    child: Text("Irme"))
              ],
            ),
          ),
        ));
  }
}
