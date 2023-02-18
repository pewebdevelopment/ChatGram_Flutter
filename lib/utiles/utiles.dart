import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final int? maxLine;
  final int? textLength;

  // ignore: prefer_typing_uninitialized_variables
  var isSelected;

  // ignore: prefer_typing_uninitialized_variables
  var onTap;

  // ignore: prefer_typing_uninitialized_variables
  var enable;

  // ignore: prefer_typing_uninitialized_variables
  var obscure;

  // ignore: prefer_typing_uninitialized_variables
  var keyBoardType;

  // ignore: prefer_typing_uninitialized_variables
  var onChange;

  CommonTextField({
    required this.hintText,
    this.controller,
    this.maxLine,
    this.textLength,
    this.onTap,
    this.isSelected,
    this.enable,
    this.obscure,
    this.keyBoardType,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: TextFormField(
        // cursorColor: ColorConst,
        onChanged: onChange ?? (val) {},
        controller: controller,
        enabled: enable ?? true,
        keyboardType: keyBoardType,
        cursorColor: ColorConst.black,
        obscureText: obscure ?? false,
        style: TextStyleClass.sourceSansProRegular(),
        maxLines: maxLine ?? 1,
        maxLength: textLength,
        decoration: InputDecoration(
          suffixIcon: isSelected == null
              ? SizedBox.shrink()
              : InkWell(
                  onTap: onTap ?? () {},
                  child: Icon(
                    isSelected ? Icons.visibility : Icons.visibility_off,
                    color: ColorConst.grey94,
                    size: 20,
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
          hintText: hintText,
          hintStyle: TextStyleClass.sourceSansProRegular(
            color: ColorConst.grey94,
          ),
        ),
      ),
    );
  }
}

commonOr() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 1,
            width: Get.width,
            color: ColorConst.greyE2,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Or Login With",
          style: TextStyleClass.sourceSansProRegular(
            size: 12.0,
            color: ColorConst.grey949,
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1,
            width: Get.width,
            color: ColorConst.greyE2,
          ),
        ),
      ],
    ),
  );
}

///common button
// ignore: must_be_immutable
class CommonButton extends StatelessWidget {
  String title;

  // ignore: prefer_typing_uninitialized_variables
  var fontSize;

  // ignore: prefer_typing_uninitialized_variables
  var onPresss;

  // ignore: prefer_typing_uninitialized_variables
  var color;

  CommonButton(
      {required this.title, this.fontSize, required this.onPresss, this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPresss,
      minWidth: Get.width,
      height: 50,
      elevation: 0,
      color: color ?? ColorConst.appColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: TextStyleClass.sourceSansProBold(
          size: fontSize,
          color: ColorConst.greyE2,
        ),
      ),
    );
  }
}
