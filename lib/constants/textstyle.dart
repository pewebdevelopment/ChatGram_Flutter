import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';

class TextStyleClass {
  ///Capriola Regular
  static capriolaRegular({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.black2A,
      fontSize: size ?? 14.0,
      fontFamily: "Capriola",
      fontWeight: FontWeight.w400,
    );
  }

  ///SourceSansPro Regular
  static sourceSansProRegular({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.black,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w400,
    );
  }

  ///SourceSansPro semiBold
  static sourceSansProSemiBold({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.black,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w600,
    );
  }

  ///SourceSansProBold
  static sourceSansProBold({var color, var size}) {
    return TextStyle(
      color: color ?? ColorConst.black,
      fontSize: size ?? 14.0,
      fontFamily: "SourceSansPro",
      fontWeight: FontWeight.w700,
    );
  }
}
