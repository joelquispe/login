import 'package:get/get.dart';
import 'package:roger/app/bindings/home_binding.dart';
import 'package:roger/app/bindings/login_binding.dart';
import 'package:roger/app/bindings/register_binding.dart';
import 'package:roger/app/routes/app_routes.dart';
import 'package:roger/app/ui/pages/home_page/home_page.dart';
import 'package:roger/app/ui/pages/login_page/login_page.dart';
import 'package:roger/app/ui/pages/register_page/register_page.dart';


abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> HomePage(),binding: HomeBinding()),
    GetPage(name: Routes.LOGIN, page:()=> LoginPage(), binding:LoginBinding() ),
    GetPage(name: Routes.REGISTER, page:()=> RegisterPage(), binding:RegisterBinding() ),
  ];
}