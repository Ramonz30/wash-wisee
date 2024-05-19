import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/models/category_model.dart';
import 'package:laundry_app/models/onbording_model.dart';

List<OnboardingModel> onboardings = [
  OnboardingModel(
    imageBg: 'assets/images/onboarding_1.png',
    title: 'Convenient Laundry Booking',
    subTitle: 'With washwisee, schedule pickups at your convenience.',
  ),
  OnboardingModel(
    imageBg: 'assets/images/onboarding2.png',
    title: 'Affordable and Reliable Service',
    subTitle: 'Trustworthy professionals handle your laundry with care.',
  ),
  OnboardingModel(
    imageBg: 'assets/images/onboarding_3.png',
    title: 'No time for laundry?',
    subTitle: 'Digitalize your laundry service with washwisee.',
  ),
];

List<CategoryModel> categories = [
  CategoryModel(
    categoryColor: AppColors.primary,
    text: 'Wash and fold',
  ),
  CategoryModel(
    categoryColor: AppColors.dc,
    text: 'Dry cleaning',
  ),
  CategoryModel(
    categoryColor: AppColors.sr,
    text: 'Stain removal',
  ),
  CategoryModel(
    categoryColor: AppColors.ip,
    text: 'Ironing/pressing',
  ),
];

final List<Map<String, dynamic>> textImage = [
  {
    "image": ImageHelper.press,
    "text": 'Adeyemo Wash',
  },
  {
    "image": ImageHelper.dry,
    "text": 'Jimon Wash',
  },
  {
    "image": ImageHelper.clean,
    "text": 'Jimon Wash',
  },
  {
    "image": ImageHelper.press,
    "text": 'Jimon Wash',
  }
];
