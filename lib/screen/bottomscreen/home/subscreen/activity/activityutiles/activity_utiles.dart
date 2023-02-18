import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/activity/activityutiles/activity_data.dart';

followRow() {
  return Padding(
    padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
    child: Row(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorConst.greyEB.withOpacity(0.75),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.5),
            child: SvgPicture.asset(
              ImageCons.userAdd,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Follow requests",
              style: TextStyleClass.sourceSansProSemiBold(
                color: ColorConst.black2A,
              ),
            ),
            Text(
              "Approve or ignore requests",
              style: TextStyleClass.sourceSansProSemiBold(
                color: ColorConst.grey949,
                size: 12.0,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

///thisweek
thisWeekList() {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    itemCount: 2,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                        index == 0 ? ImageCons.pic4 : ImageCons.pic2,
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: index == 1
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Eleanor 🔥",
                              style: TextStyleClass.sourceSansProSemiBold(
                                  size: 14.0),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Started following you. ",
                                    style: TextStyleClass.sourceSansProRegular(
                                      size: 14.0,
                                      color: ColorConst.black2A,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "6d",
                                    style: TextStyleClass.sourceSansProRegular(
                                      size: 14.0,
                                      color: ColorConst.grey949,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Jane_Cooper",
                                style: TextStyleClass.sourceSansProSemiBold(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text: " liked your story",
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text: " 4d",
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.grey949,
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ],
            ),
            index == 1
                ? MaterialButton(
                    onPressed: () {},
                    height: 30,
                    minWidth: 80,
                    color: ColorConst.appColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 0,
                    child: Text(
                      "Follow",
                      style: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.white,
                      ),
                    ),
                  )
                : Container(
                    height: 55,
                    width: 29,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageCons.picPost2),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
          ],
        ),
      );
    },
  );
}

thisMonthList() {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    itemCount: thisMonthDataList.length,
    itemBuilder: (context, index) {
      var item = thisMonthDataList[index];
      return Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                        item.image.toString(),
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                if (index == 0 || index == 2 || index == 6)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title.toString(),
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 14.0),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: item.subTitle.toString(),
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text: item.day.toString(),
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.grey949,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                if (index == 1 || index == 3 || index == 4)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: item.title.toString(),
                            style: TextStyleClass.sourceSansProSemiBold(
                              size: 14.0,
                              color: ColorConst.black2A,
                            ),
                          ),
                          TextSpan(
                            text: item.subTitle.toString(),
                            style: TextStyleClass.sourceSansProRegular(
                              size: 14.0,
                              color: ColorConst.black2A,
                            ),
                          ),
                          TextSpan(
                            text: item.day.toString(),
                            style: TextStyleClass.sourceSansProRegular(
                              size: 14.0,
                              color: ColorConst.grey949,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                if (index == 5)
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Savannah (>‿◠)✌",
                            style: TextStyleClass.sourceSansProSemiBold(
                              size: 14.0,
                              color: ColorConst.black2A,
                            ),
                          ),
                          TextSpan(
                            text:
                                "and 106 others follow\nyou, but you don’t follow them back.",
                            style: TextStyleClass.sourceSansProRegular(
                              size: 14.0,
                              color: ColorConst.black2A,
                            ),
                          ),
                          TextSpan(
                            text: " 6d",
                            style: TextStyleClass.sourceSansProRegular(
                              size: 14.0,
                              color: ColorConst.grey949,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
            if (index == 0 || index == 2 || index == 6)
              MaterialButton(
                onPressed: () {},
                height: 30,
                minWidth: 80,
                color: index == 6 ? ColorConst.appColor : ColorConst.greyF3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 0,
                child: Text(
                  "Follow",
                  style: TextStyleClass.sourceSansProRegular(
                    color: index == 6 ? ColorConst.white : ColorConst.black2A,
                  ),
                ),
              ),
            if (index == 1 || index == 3 || index == 4)
              Container(
                height: 55,
                width: 29,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageCons.picPost2), fit: BoxFit.fill),
                ),
              ),
          ],
        ),
      );
    },
  );
}

earlierList() {
  return ListView.builder(
    physics: NeverScrollableScrollPhysics(),
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    itemCount: earlierDataList.length,
    itemBuilder: (context, index) {
      var item = earlierDataList[index];
      return Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
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
                        item.image.toString(),
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                index == 1
                    ? Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Savannah (>‿◠)✌",
                                style: TextStyleClass.sourceSansProSemiBold(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "and 106 others follow\nyou, but you don’t follow them back.",
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text: " 6d",
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.grey949,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: item.title.toString(),
                                style: TextStyleClass.sourceSansProSemiBold(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text: item.subTitle.toString(),
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.black2A,
                                ),
                              ),
                              TextSpan(
                                text: item.day.toString(),
                                style: TextStyleClass.sourceSansProRegular(
                                  size: 14.0,
                                  color: ColorConst.grey949,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ],
            ),
            index == 1
                ? SizedBox.shrink()
                : Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImageCons.picPost3),
                      ),
                    ),
                  ),
          ],
        ),
      );
    },
  );
}

suggestionListDesign() {
  return ListView.builder(
    padding: EdgeInsets.zero,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: suggestionDataList.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(top: 16, left: 20, right: 20),
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
                        suggestionDataList[index].image.toString(),
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
                            suggestionDataList[index].title.toString(),
                            style: TextStyleClass.sourceSansProSemiBold(
                                size: 14.0),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          suggestionDataList[index].isShow == true
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
                        suggestionDataList[index].subTitle.toString(),
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
                "Follow",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.white,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
