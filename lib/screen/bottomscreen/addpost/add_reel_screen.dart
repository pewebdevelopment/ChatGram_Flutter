import 'package:flutter/material.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/images.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/addpostutiles/add_utiles.dart';

class AddReelScreen extends StatelessWidget {
  const AddReelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 56),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConst.white.withOpacity(0.12),
                    ),
                    child: Icon(
                      Icons.settings,
                      color: ColorConst.white,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConst.white.withOpacity(0.12),
                    ),
                    child: Icon(
                      Icons.clear,
                      color: ColorConst.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  commonRow(title: "Swap", image: ImageCons.swap),
                  commonRow(title: "Flash Light", image: ImageCons.flashOff),
                  commonRow(title: "Timeline", image: ImageCons.timeLineIcon),
                  commonRow(title: "Sounds", image: ImageCons.musicIcon),
                  // commonRow(title: "Text", image: ImageCons.textIcon),
                  commonRow(title: "Timer", image: ImageCons.timerIcon),
                  commonRow(title: "Sticker", image: ImageCons.stickerIcon),
                  commonRow(title: "Grid", image: ImageCons.gridFourIcon),
                  commonRow(title: "Gallery", image: ImageCons.imageSquare),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 150),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: ColorConst.white,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorConst.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
