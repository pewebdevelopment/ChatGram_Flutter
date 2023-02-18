import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';

void showMyAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add Profile Photo",
                      style: TextStyleClass.sourceSansProSemiBold(size: 22.0),
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
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  "Import from Facebook",
                  style: TextStyleClass.sourceSansProRegular(
                      color: ColorConst.black2A, size: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  "Take Photo",
                  style: TextStyleClass.sourceSansProRegular(
                      color: ColorConst.black2A, size: 16.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  "Choose from library",
                  style: TextStyleClass.sourceSansProRegular(
                      color: ColorConst.black2A, size: 16.0),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      );
    },
  );
}

void showMyAlertDialogCity(BuildContext context) {
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
            insetPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
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
                          "Select your Country",
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
                  Expanded(
                    child: ListView.builder(
                      itemCount: country.length,
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
                                country[index]["text"],
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
                    ),
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

List<Map> country = [
  {
    "text": "Argentina (+54)",
  },
  {
    "text": "Australia (+61)",
  },
  {
    "text": "Belgique (+32)",
  },
  {
    "text": "Brazil (+55)",
  },
  {
    "text": "Canada (English) (+1)",
  },
  {
    "text": "Canada (Francais) (+011)",
  },
  {
    "text": "Chile (+56)",
  },
  {
    "text": "Colombia (+57)",
  },
  {
    "text": "Cesko (+420)",
  },
  {
    "text": "Danmark (+45)",
  },
  {
    "text": "Deutschland (+49)",
  },
  {
    "text": "Espana (+34)",
  },
  {
    "text": "France (+33)",
  },
  {
    "text": "India (+91)",
  },
  {
    "text": "Ireland (+353)",
  },
  {
    "text": "Israel (+972)",
  },
  {
    "text": "Italia (+39)",
  },
  {
    "text": "Malaysia (+60)",
  },
  {
    "text": "Maxico (+52)",
  },
  {
    "text": "Nederland (+31)",
  },
  {
    "text": "New Zealand (+64)",
  },
  {
    "text": "Norge (+47)",
  },
  {
    "text": "Osterreich (+43)",
  },
  {
    "text": "Peru (+51)",
  },
  {
    "text": "Philippines (+63)",
  },
  {
    "text": "Polska (+48)",
  },
  {
    "text": "Portugal (+351)",
  },
  {
    "text": "Schweiz (Deutsch) (+423)",
  },
  {
    "text": "Singapore (+65)",
  },
  {
    "text": "Slovensko (+421)",
  },
  {
    "text": "Suisse (Francais) (+41)",
  },
  {
    "text": "Suomi (+358)",
  },
  {
    "text": "Sverige (+46)",
  },
  {
    "text": "Svizzera (italiano) (+41)",
  },
  {
    "text": "Switzerland (English) (+41)",
  },
  {
    "text": "Thailand (English) (+66)",
  },
  {
    "text": "Turkiye (+90)",
  },
  {
    "text": "United Arab Emirates (+971)",
  },
  {
    "text": "United Kingdom (+44)",
  },
  {
    "text": "United States (+1)",
  },
];
