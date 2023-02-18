import 'package:instragramclone/constants/images.dart';

class ProfileActivityDataModel {
  String? title;
  String? subtitle;
  String? image;

  ProfileActivityDataModel({this.title, this.subtitle, this.image});
}

List<ProfileActivityDataModel> profileActivityDataList = [
  ProfileActivityDataModel(
    title: "Time spent",
    subtitle: "See how much time you usually spend on Chatgram each day.",
    image: ImageCons.clockIcon,
  ),
  ProfileActivityDataModel(
    title: "Photos and videos",
    subtitle: "View, archive or delete photos and videos you’ve shared.",
    image: ImageCons.filmIcon,
  ),
  ProfileActivityDataModel(
    title: "Interactions",
    subtitle: "Review and delete likes, comments, and your other interactions.",
    image: ImageCons.arrowLRIcon,
  ),
  ProfileActivityDataModel(
    title: "Account history",
    subtitle:
        "Review changes you’ve made to your account since you created it.",
    image: ImageCons.calenderIcon,
  ),
  ProfileActivityDataModel(
    title: "Recent searches",
    subtitle:
        "Review things you’re searched for on Chatgram and clear your search history.",
    image: ImageCons.searchIcon,
  ),
  ProfileActivityDataModel(
    title: "Links you’ve visited",
    subtitle: "See which links you’ve visited recently.",
    image: ImageCons.linkIcon,
  ),
  ProfileActivityDataModel(
    title: "Archived",
    subtitle: "View and manage content you’ve archived",
    image: ImageCons.archiveIcon,
  ),
  ProfileActivityDataModel(
    title: "Recently deleted",
    subtitle: "View and manage content you’ve recently deleted.",
    image: ImageCons.trashIcon,
  ),
  ProfileActivityDataModel(
    title: "Download your information",
    subtitle: "Download a copy of the information you’ve shared with Chatgram.",
    image: ImageCons.downloadIcon,
  ),
];
