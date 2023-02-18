import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/forgetpassword/forget_password.dart';
import 'package:instragramclone/screen/auth/login/controller/login_controller.dart';
import 'package:instragramclone/screen/auth/login/utiles/login_utiles.dart';
import 'package:instragramclone/screen/auth/signup/signup_with_email_screen.dart';
import 'package:instragramclone/screen/bottomscreen/bottomnavigation/bottom_navigation_screen.dart';
import 'package:instragramclone/utiles/utiles.dart';

class LogInScreen extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
                showMyAlertDialogLan(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "English (United States)",
                    style: TextStyleClass.capriolaRegular(size: 16.0),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: ColorConst.black,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 80,
            ),
            Text(
              "Chatgram",
              style: TextStyleClass.capriolaRegular(size: 28.0),
            ),
            SizedBox(
              height: 30,
            ),

            ///email
            CommonTextField(
              hintText: 'Email',
              keyBoardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 25,
            ),

            ///password
            Obx(
              () => CommonTextField(
                hintText: 'Password',
                keyBoardType: TextInputType.visiblePassword,
                obscure: loginController.isOpenLogIn.value,
                onTap: () {
                  loginController.isOpenLogIn.value =
                      !loginController.isOpenLogIn.value;
                },
                isSelected: loginController.isOpenLogIn.isFalse,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Forgot your login details?",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey94,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => ForgetPasswordScreen());
                  },
                  child: Text(
                    " Click here",
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 12.0,
                      color: ColorConst.black2A,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45,
            ),
            commonOr(),
            SizedBox(
              height: 44,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(ImageCons.google),
                  height: 50,
                ),
                SizedBox(
                  width: 40,
                ),
                Image(
                  image: AssetImage(ImageCons.facebook),
                  height: 50,
                ),
              ],
            ),
            SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: CommonButton(
                title: "Log in",
                fontSize: 16.0,
                onPresss: () {
                  Get.to(() => BottomNavigationScreen());
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
                  "Don’t have an account? ",
                  style: TextStyleClass.sourceSansProRegular(
                    size: 12.0,
                    color: ColorConst.grey94,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => SignUpScreen());
                  },
                  child: Text(
                    "Sign up.",
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
