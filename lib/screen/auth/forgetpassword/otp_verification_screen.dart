import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/utiles/utiles.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpVerificationScreen extends StatelessWidget {
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
    );
  }

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Enter your OTP",
              style: TextStyleClass.sourceSansProSemiBold(
                size: 22.0,
                color: ColorConst.black2A,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "We’ve send you the verification code on\nyour Device.",
              textAlign: TextAlign.center,
              style: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey949,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                color: ColorConst.white,
                child: PinPut(
                  fieldsCount: 4,
                  textStyle: TextStyleClass.sourceSansProSemiBold(
                    size: 22.0,
                    color: ColorConst.black2A,
                  ),
                  cursorColor: ColorConst.greyAC,
                  eachFieldHeight: 55,
                  eachFieldWidth: 55,
                  focusNode: _pinPutFocusNode,
                  submittedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorConst.appColor,
                    ),
                    color: ColorConst.white,
                  ),
                  selectedFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorConst.appColor,
                    ),
                    color: ColorConst.white,
                  ),
                  followingFieldDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: ColorConst.appColor,
                    ),
                    color: ColorConst.white,
                  ),
                  disabledDecoration: _pinPutDecoration.copyWith(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorConst.white,
                    border: Border.all(
                      color: ColorConst.appColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Re-send code',
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
              height: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: CommonButton(
                title: "Submit",
                fontSize: 16.0,
                onPresss: () {
                  /*  Get.to(
                    OtpVerificationScreen(),
                  );*/
                },
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
