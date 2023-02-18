import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';

modalBottomSheetMenu(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: ColorConst.white,
    context: context,
    builder: (builder) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            backgroundColor: ColorConst.white,
            elevation: 0,
            centerTitle: true,
            foregroundColor: ColorConst.black,
            title: Text(
              "More",
              style: TextStyleClass.sourceSansProBold(
                color: ColorConst.black2A,
                size: 22.0,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    share();
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: ColorConst.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: ColorConst.greyE9,
                            width: 0.75,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: SvgPicture.asset(ImageCons.share),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Share",
                        style: TextStyleClass.sourceSansProSemiBold(),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorConst.greyE9,
                          width: 0.75,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(ImageCons.link),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Link",
                      style: TextStyleClass.sourceSansProSemiBold(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorConst.greyE9,
                          width: 0.75,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(ImageCons.save),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Save",
                      style: TextStyleClass.sourceSansProSemiBold(),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: ColorConst.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: ColorConst.greyE9,
                          width: 0.75,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: SvgPicture.asset(ImageCons.remix),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Remix",
                      style: TextStyleClass.sourceSansProSemiBold(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            height: 1,
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.visibility_off_outlined,
                  color: ColorConst.black2A,
                  size: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Not Interested",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.black2A,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                SvgPicture.asset(
                  ImageCons.reportIcon,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Report..",
                  style: TextStyleClass.sourceSansProSemiBold(
                    color: ColorConst.appColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      );
    },
  );
}

Future<void> share() async {
  await FlutterShare.share(
      title: 'Example share',
      text: 'Example share text',
      linkUrl: 'https://flutter.dev/',
      chooserTitle: 'Example Chooser Title');
}
