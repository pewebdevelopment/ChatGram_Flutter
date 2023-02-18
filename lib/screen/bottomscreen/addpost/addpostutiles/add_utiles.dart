import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

commonRow({var title, var image}) {
  return Padding(
    padding: const EdgeInsets.only(right: 33,bottom: 22),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: TextStyleClass.sourceSansProBold(
            color: ColorConst.white,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        SvgPicture.asset(image, color: ColorConst.white),
      ],
    ),
  );
}
