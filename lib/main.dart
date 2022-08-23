import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roger/app/routes/app_pages.dart';
import 'package:roger/app/routes/app_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.LOGIN,
        
        defaultTransition: Transition.fade,
        
        getPages: AppPages.pages,
        
    )
  );
}