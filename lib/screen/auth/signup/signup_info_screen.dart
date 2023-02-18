import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/auth/signup/add_profile_photo_screen.dart';
import 'package:instragramclone/utiles/utiles.dart';

class SignUpInfoScreen extends StatelessWidget {
  const SignUpInfoScreen({Key? key}) : super(key: key);

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
        children: [
          Text(
            "Sign up as Ravi_0123?",
            style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You can always change your username later?",
            textAlign: TextAlign.center,
            style: TextStyleClass.sourceSansProRegular(
              color: ColorConst.grey949,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "People who use our service may have uploaded your contact information to Chatgram. ",
                  style: TextStyleClass.sourceSansProRegular(
                    color: ColorConst.grey949,
                  ),
                ),
                TextSpan(
                  text: "Learn More",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "By tapping Sign up, you agree to our",
                    style: TextStyleClass.sourceSansProRegular(
                      color: ColorConst.grey949,
                    ),
                  ),
                  TextSpan(
                    text: "Terms, Privacy Policy",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.black2A,
                    ),
                  ),
                  TextSpan(
                    text: " and ",
                    style: TextStyleClass.sourceSansProRegular(
                      color: ColorConst.grey949,
                    ),
                  ),
                  TextSpan(
                    text: "Cookies Policy.",
                    style: TextStyleClass.sourceSansProSemiBold(
                      color: ColorConst.black2A,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: CommonButton(
              title: "Sign up",
              fontSize: 16.0,
              onPresss: () {
                Get.to(
                  () => AddProfilePhotoScreen(),
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
