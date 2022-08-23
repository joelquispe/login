
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roger/app/ui/global_widgets/WTextField.dart';
import '../../../controllers/home_controller.dart';


class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container()
    );
  }
}
  