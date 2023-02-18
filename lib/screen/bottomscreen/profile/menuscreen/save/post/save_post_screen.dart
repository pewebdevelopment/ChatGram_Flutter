import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instragramclone/constants/color.dart';
import 'package:instragramclone/constants/textstyle.dart';
import 'package:instragramclone/screen/bottomscreen/home/subscreen/search/utiles/search_data.dart';

class SavePostScreen extends StatelessWidget {
  const SavePostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      appBar: AppBar(
        backgroundColor: ColorConst.white,
        foregroundColor: ColorConst.black2A,
        centerTitle: true,
        elevation: 1,
        title: Text(
          "All post",
          style: TextStyleClass.sourceSansProBold(
            size: 22.0,
            color: ColorConst.black2A,
          ),
        ),
      ),
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.zero,
        // physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        itemCount: searchDataList.length,
        itemBuilder: (context, index) => Card(
          child: Image(
            image: AssetImage(
              searchDataList[index].image.toString(),
            ),
          ),
        ),
        staggeredTileBuilder: (index) => StaggeredTile.count(
          (index % 7 == 0) ? 2 : 1,
          (index % 7 == 0) ? 2 : 1,
        ),
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
      ),
    );
  }
}
