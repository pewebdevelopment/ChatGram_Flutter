import 'package:instragramclone/constants/images.dart';

class CommentsDataModel {
  String? image;
  String? title;
  String? time;
  String? subtitle;
  String? like;
  bool? isFav;

  CommentsDataModel({
    this.image,
    this.title,
    this.time,
    this.subtitle,
    this.isFav,
    this.like,
  });
}

List<CommentsDataModel> commentDataList = [
  CommentsDataModel(
    image: ImageCons.pic1,
    title: "Jerome Bell",
    time: "3h",
    like: "449 likes",
    subtitle: "Oooof Ooooof 🔥 😂",
    isFav: true,
  ),
  CommentsDataModel(
    image: ImageCons.pic2,
    title: "Theresa Webb",
    time: "2h",
    like: "",
    subtitle: "😂 😂 😂",
    isFav: false,
  ),
  CommentsDataModel(
    image: ImageCons.pic3,
    title: "Cody Fisher",
    time: "5h",
    like: "55 likes",
    subtitle: "So Cute",
    isFav: false,
  ),
  CommentsDataModel(
    image: ImageCons.pic4,
    title: "Robert Fox",
    time: "1h",
    like: "55 likes",
    subtitle: "Awesome 🔥 🔥",
    isFav: false,
  ),
  CommentsDataModel(
    image: ImageCons.pic1,
    title: "Ralph Edwards",
    time: "11h",
    like: "",
    subtitle: "Summers almost over!",
    isFav: false,
  ),
  CommentsDataModel(
    image: ImageCons.pic2,
    title: "Savannah Nguyen",
    time: "8h",
    like: "",
    subtitle: "Thay are so cute.",
    isFav: false,
  ),
  CommentsDataModel(
    image: ImageCons.pic3,
    title: "Cameron Williamson",
    time: "1d",
    like: "",
    subtitle: "Your kids are getting so big",
    isFav: false,
  ),
  CommentsDataModel(
    image: ImageCons.pic4,
    title: "Jerome Bell",
    time: "3h",
    like: "449 likes",
    subtitle: "Oooof Ooooof 🔥 😂",
    isFav: true,
  ),
];
