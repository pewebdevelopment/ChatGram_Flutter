import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/login/login_screen.dart';
import 'package:instragramclone/screen/auth/signup/name_password_screen.dart';
import 'package:instragramclone/screen/auth/signup/signup_with_email_screen.dart';
import 'package:instragramclone/screen/auth/signup/signuputiles/signup_utiles.dart';
import 'package:instragramclone/utiles/utiles.dart';

class SignUpWithPhoneScreen extends StatelessWidget {
  const SignUpWithPhoneScreen({Key? key}) : super(key: key);

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
              "Sign up with Phone No",
              style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We’ve send you the verification code on\nyour Phone No.",
              textAlign: TextAlign.center,
              style: TextStyleClass.sourceSansProSemiBold(
                color: ColorConst.grey949,
              ),
            ),
            SizedBox(
              height: 33,
            ),

            /* ///email
            CommonTextField(
              hintText: 'Email',
              keyBoardType: TextInputType.emailAddress,
            ),*/

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                cursorColor: ColorConst.black,
                style: TextStyleClass.sourceSansProRegular(),
                decoration: InputDecoration(
                  prefixIcon: SizedBox(
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              showMyAlertDialogCity(context);
                            },
                            child: Text(
                              "IN +91",
                              style: TextStyleClass.sourceSansProSemiBold(
                                  size: 18.0),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            height: 30,
                            child: VerticalDivider(
                              width: 1,
                              color: ColorConst.grey949,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: ColorConst.grey94,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: ColorConst.grey94,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: ColorConst.grey94,
                      width: 1,
                    ),
                  ),
                  isDense: false,
                  hintText: "Phone",
                  hintStyle: TextStyleClass.sourceSansProRegular(
                    color: ColorConst.grey94,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            TextButton(
              onPressed: () {
                Get.to(
                  () => SignUpScreen(),
                );
              },
              child: Text(
                'Sign up with Email instead',
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
