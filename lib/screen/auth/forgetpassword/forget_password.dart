import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/forgetpassword/otp_verification_screen.dart';
import 'package:instragramclone/utiles/utiles.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        backgroundColor: ColorConst.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Find your Account",
            style: TextStyleClass.sourceSansProSemiBold(
              size: 22.0,
              color: ColorConst.black2A,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Enter your Email ID or Phone No to reset your\npassword. We send OTP on your Device.",
            textAlign: TextAlign.center,
            style: TextStyleClass.sourceSansProRegular(
              color: ColorConst.grey949,
            ),
          ),
          SizedBox(
            height: 30,
          ),

          ///email
          CommonTextField(
            hintText: 'Email or Phone',
            keyBoardType: TextInputType.emailAddress,
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: CommonButton(
              title: "Next",
              fontSize: 16.0,
              onPresss: () {
                Get.to(
                  OtpVerificationScreen(),
                );
              },
            ),
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
