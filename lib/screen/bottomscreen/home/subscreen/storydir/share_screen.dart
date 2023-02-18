import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activityutiles/activity_data.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        automaticallyImplyLeading: true,
        foregroundColor: ColorConst.black2A,
        centerTitle: true,
        title: Text(
          "Share",
          style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              border: InputBorder.none,
              hintText: "Write a caption..",
              hintStyle: TextStyleClass.sourceSansProRegular(
                color: ColorConst.grey949,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: ColorConst.greyE2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: TextFormField(
              cursorColor: ColorConst.appColor,
              // controller: controller!.searchTextController,
              decoration: InputDecoration(
                filled: true,
                contentPadding: EdgeInsets.only(left: 20, top: 16, bottom: 16),
                fillColor: ColorConst.greyF3,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(
                  Icons.mic_none,
                  color: ColorConst.black2A,
                ),
                hintText: "Type to search...",
                hintStyle: TextStyleClass.capriolaRegular(
                  color: ColorConst.grey81,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(bottom: 20),
              shrinkWrap: true,
              itemCount: discoverActivityList.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 20, left: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: ColorConst.greyEB, width: 0.75),
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(ImageCons.addReal),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "Add reel to your story",
                            style: TextStyleClass.sourceSansProSemiBold(
                                size: 14.0),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.only(top: 16, right: 20, left: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  discoverActivityList[index].image.toString(),
                                ),
                                fit: BoxFit.fill,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      discoverActivityList[index]
                                          .title
                                          .toString(),
                                      style:
                                          TextStyleClass.sourceSansProSemiBold(
                                              size: 14.0),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    discoverActivityList[index].isShow == true
                                        ? Image(
                                            height: 14,
                                            image: AssetImage(
                                              ImageCons.celebs,
                                            ),
                                          )
                                        : Container(),
                                  ],
                                ),
                                Text(
                                  discoverActivityList[index]
                                      .subTitle
                                      .toString(),
                                  style: TextStyleClass.sourceSansProRegular(
                                    size: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      MaterialButton(
                        onPressed: () {},
                        height: 30,
                        minWidth: 80,
                        color: ColorConst.appColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        elevation: 0,
                        child: Text(
                          "Send",
                          style: TextStyleClass.sourceSansProRegular(
                            color: ColorConst.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
