import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/screen/splashscreen/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) => Center(
          child: SizedBox(
            height: 184,
            width: 140,
            child: SvgPicture.asset(
              ImageCons.splashBg,
            ),
          ),
        ),
      ),
    );
  }
}
