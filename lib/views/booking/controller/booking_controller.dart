import 'package:get/get.dart';
import 'package:laundry_app/constants/constant.dart';

class BookingController extends GetxController {
  List<Map<String, dynamic>> completedTodayData = [
    {"name": "Adeyemo wash", "image": ImageHelper.profileImage},
    {"name": "Jimoh Adesina", "image": ImageHelper.profileImage},
  ];
  List<Map<String, dynamic>> completedYesterdayData = [
    {"name": "Michael Enterprise", "image": ImageHelper.profileImage},
  ];
}
