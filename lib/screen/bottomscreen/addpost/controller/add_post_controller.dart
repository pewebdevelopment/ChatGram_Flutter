import 'package:get/get.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/add_post_screen.dart';
import 'package:instragramclone/screen/bottomscreen/addpost/add_story_screen.dart';

class AddPostController extends GetxController {
  var selectedIndex = 0;

  void selectedItem(index) {
    selectedIndex = index;
    update();
  }

  List buttonList = ["Post", "Story", "Reel", "Live"];
  List buttonOnTap = [
    AddPostScreen(),
    AddStoryScreen(),
    AddStoryScreen(),
    AddStoryScreen(),
  ];
}
