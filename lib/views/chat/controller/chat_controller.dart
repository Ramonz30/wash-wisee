import 'package:get/get.dart';

import '../../../constants/constant.dart';

class ChatController extends GetxController{
  List<Map<String, dynamic>> chatData = [
    {
      "name": "Andy Wyatt",
      "image": ImageHelper.profileImage,
      "subtitle":'Just a reminder, can you...'
    },
    {
      "name": "Adeyemo wash",
      "image": ImageHelper.profile2Image,
      "subtitle":'Can you send me the photos...'
    },
    {
      "name": "Adesina laundry",
      "image": ImageHelper.profileImage,
      "subtitle":'Hello, this is the new concept...'
    },
  ];
}