import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';

///story bottom container
bottomContainer() {
  return Container(
    height: 95,
    width: Get.width,
    decoration: BoxDecoration(
      color: ColorConst.black,
      boxShadow: [
        BoxShadow(
          color: ColorConst.black.withOpacity(0.06),
          blurRadius: 16,
          spreadRadius: 0,
          offset: Offset(0, -4),
        ),
      ],
    ),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextFormField(
              cursorColor: ColorConst.appColor,
              // controller: controller!.searchTextController,
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.only(left: 20, top: 16, bottom: 16),
                fillColor: ColorConst.greyF3.withOpacity(0.15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(
                  Icons.mic_none,
                  color: ColorConst.white,
                ),
                hintText: "Message...",
                hintStyle: TextStyleClass.capriolaRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConst.greyF3.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.favorite,
            color: ColorConst.appColor,
          ),
        ),
        SizedBox(
          width: 16,
        ),
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConst.greyF3.withOpacity(0.15),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            ImageCons.shareIcon,
            color: ColorConst.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}
