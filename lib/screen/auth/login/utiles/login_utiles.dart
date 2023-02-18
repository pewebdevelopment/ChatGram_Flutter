import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

void showMyAlertDialogLan(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      var selectedIndex = 0;
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            titlePadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.zero,
            insetPadding: EdgeInsets.symmetric(horizontal: 25),
            content: SizedBox(
              width: Get.width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select your Language",
                          style:
                              TextStyleClass.sourceSansProSemiBold(size: 22.0),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(Icons.clear),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: ColorConst.greyE2,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      hintStyle: TextStyleClass.sourceSansProRegular(
                        color: ColorConst.grey94,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.search,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: ColorConst.greyE2,
                  ),
                  ListView.builder(
                    itemCount: language.length,
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          setState(() {
                            /* language[index]["isSelected"] =
                                !language[index]["isSelected"];*/
                            selectedIndex = index;
                          });
                        },
                        title: Row(
                          children: [
                            Text(
                              language[index]["text"],
                              style: TextStyleClass.sourceSansProRegular(
                                color: selectedIndex == index
                                    ? ColorConst.appColor
                                    : ColorConst.black2A,
                                size: 16.0,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.check,
                              color: selectedIndex == index
                                  ? ColorConst.appColor
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

List<Map> language = [
  {
    "text": "English",
    "isSelected": false,
  },
  {
    "text": "Mandarin Chinese",
    "isSelected": false,
  },
  {
    "text": "Hindi",
    "isSelected": false,
  },
  {
    "text": "Spanish",
    "isSelected": false,
  },
  {
    "text": "French",
    "isSelected": false,
  },
  {
    "text": "Arabic",
    "isSelected": false,
  },
  {
    "text": "Bangali",
    "isSelected": false,
  },
  {
    "text": "Russian",
    "isSelected": false,
  },
  {
    "text": "Portuguese",
    "isSelected": false,
  },
  {
    "text": "Indonesian",
    "isSelected": false,
  },
  {
    "text": "Japanese",
    "isSelected": false,
  },
  {
    "text": "Dansk",
    "isSelected": false,
  },
];
