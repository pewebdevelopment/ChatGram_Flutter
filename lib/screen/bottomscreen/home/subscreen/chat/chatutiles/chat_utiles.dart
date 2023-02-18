import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/chat/chat_detail_screen.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/chat/chatutiles/chat_data.dart';

///chatlist screen

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            itemCount: chatDataList.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(() => ChatDetailScreen());
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  chatDataList[index].image.toString(),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  chatDataList[index].title.toString(),
                                  style: (index == 0 || index == 1)
                                      ? TextStyleClass.sourceSansProBold(
                                          size: 14.0)
                                      : TextStyleClass.sourceSansProSemiBold(
                                          size: 14.0),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: chatDataList[index]
                                            .subTitle
                                            .toString(),
                                        style: (index == 0 || index == 1)
                                            ? TextStyleClass.sourceSansProBold(
                                                size: 14.0,
                                              )
                                            : TextStyleClass
                                                .sourceSansProRegular(
                                                size: 14.0,
                                                color: ColorConst.grey949,
                                              ),
                                      ),
                                      TextSpan(
                                        text: (index == 0 || index == 1)
                                            ? chatDataList[index].day.toString()
                                            : "",
                                        style: TextStyleClass
                                            .sourceSansProSemiBold(
                                          size: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      (index == 0 || index == 1)
                          ? Container(
                              height: 18,
                              width: 18,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: ColorConst.appColor,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                "2",
                                style: TextStyleClass.sourceSansProBold(
                                  color: ColorConst.white,
                                  size: 10.0,
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

///calls screen
class CallListScreen extends StatelessWidget {
  const CallListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: callDataList.length,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        var item = callDataList[index];
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          item.image.toString(),
                        ),
                      ),
                    ),
                  ),
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
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: SvgPicture.asset(
                                item.day.toString(),
                              ),
                            ),
                            Text(
                              item.subTitle.toString(),
                              style: TextStyleClass.sourceSansProRegular(
                                size: 14.0,
                                color: ColorConst.grey949,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: ColorConst.appColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

///requests
class RequestsListScreen extends StatelessWidget {
  const RequestsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
          child: Text(
            "Open a chat to get more info about who’s messaging you. Thay won’t know that you’ve seen it until you accept.",
            textAlign: TextAlign.center,
            style: TextStyleClass.sourceSansProRegular(
              size: 14.0,
              color: ColorConst.grey949,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConst.greyEB),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.visibility_off_outlined,
                      color: ColorConst.black2A,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Hidden Requests",
                    textAlign: TextAlign.center,
                    style: TextStyleClass.sourceSansProSemiBold(
                      size: 14.0,
                      color: ColorConst.black2A,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "0",
                    textAlign: TextAlign.center,
                    style: TextStyleClass.sourceSansProRegular(
                      size: 14.0,
                      color: ColorConst.grey949,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ColorConst.grey949,
                  )
                ],
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Divider(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Delete All",
              style: TextStyleClass.sourceSansProBold(
                size: 14.0,
                color: ColorConst.appColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

///chat detail appbar
chatDetailAppBar() {
  return AppBar(
    backgroundColor: ColorConst.white,
    elevation: 0,
    foregroundColor: ColorConst.black2A,
    title: Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageCons.pic1),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Annette 🖤",
                style: TextStyleClass.sourceSansProSemiBold(
                  color: ColorConst.black2A,
                ),
              ),
              Text(
                "Annette Black",
                style: TextStyleClass.sourceSansProRegular(
                  color: ColorConst.grey949,
                  size: 12.0,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(ImageCons.callIcon),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(ImageCons.videoCallIcon),
        ),
      ),
    ],
  );
}

///chat detail textfromfiled
chatDetailTextFormFiled() {
  return Container(
    height: 95,
    width: Get.width,
    decoration: BoxDecoration(
      color: ColorConst.white,
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
        Container(
          height: 40,
          width: 40,
          margin: EdgeInsets.only(right: 8, left: 25),
          decoration: BoxDecoration(
            color: ColorConst.appColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.camera_alt_outlined,
            color: ColorConst.white,
          ),
        ),
        Expanded(
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
              hintText: "Message...",
              hintStyle: TextStyleClass.capriolaRegular(
                color: ColorConst.grey81,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConst.greyF3,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(ImageCons.smileyIcon),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: ColorConst.greyF3,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(ImageCons.imageSquare),
        ),
        SizedBox(
          width: 25,
        ),
      ],
    ),
  );
}

///chat detail common row
chatDetailCommonRow({var text, var color}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      mainAxisAlignment:
          color == null ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        color == null
            ? Container(
                width: 30,
                height: 30,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(ImageCons.pic1),
                  ),
                ),
              )
            : SizedBox.shrink(),
        Container(
          height: 34,
          alignment: Alignment.center,
          // margin: EdgeInsets.only(left: 10, bottom: 11),
          padding: EdgeInsets.only(left: 15, right: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: color ?? ColorConst.greyF3,
          ),
          child: Text(
            text,
            style: TextStyleClass.sourceSansProRegular(
              color: color == null ? ColorConst.black2A : ColorConst.white,
            ),
          ),
        ),
      ],
    ),
  );
}
