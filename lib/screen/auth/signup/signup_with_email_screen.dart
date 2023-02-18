import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/login/login_screen.dart';
import 'package:instragramclone/screen/auth/signup/name_password_screen.dart';
import 'package:instragramclone/screen/auth/signup/signup_with_phone_screen.dart';
import 'package:instragramclone/utiles/utiles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),
            Text(
              "Sign up with Email",
              style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We’ve send you the verification code on\nyour Email.",
              textAlign: TextAlign.center,
              style: TextStyleClass.sourceSansProSemiBold(
                color: ColorConst.grey949,
              ),
            ),
            SizedBox(
              height: 33,
            ),

            ///email
            CommonTextField(
              hintText: 'Email',
              keyBoardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 36,
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  () => SignUpWithPhoneScreen(),
                );
              },
              child: Text(
                'Sign up with phone instead',
                style: TextStyle(
                  fontFamily: "SourceSansPro",
                  color: ColorConst.appColor,
                  decoration: TextDecoration.underline,
                  decorationColor: ColorConst.appColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 350,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: CommonButton(
                title: "Next",
                fontSize: 16.0,
                onPresss: () {
                  Get.to(() => NamePasswordScreen());
                },
              ),
            ),
            SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(
                height: 1,
                color: ColorConst.greyE2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have a account? ",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey94,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.off(
                      () => LogInScreen(),
                    );
                  },
                  child: Text(
                    "Log in.",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 12.0,
                      color: ColorConst.black2A,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
