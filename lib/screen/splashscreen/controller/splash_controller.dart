import 'dart:async';

import 'package:get/get.dart';
import 'package:instragramclone/screen/auth/login/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    Timer(
      Duration(seconds: 5),
      () {
        Get.off(
          () => LogInScreen(),
        );
      },
    );
    super.onInit();
  }
}
