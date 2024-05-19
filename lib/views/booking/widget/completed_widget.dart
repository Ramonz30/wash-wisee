import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundry_app/constants/custom_text_widget.dart';

import '../../../constants/constant.dart';
import '../controller/booking_controller.dart';

class CompletedWidget extends StatelessWidget {
  const CompletedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bookingController = Get.put(BookingController());
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomTextWidget(
              text: 'Today',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.mediumGrey,
            ),
            Column(
              children: List.generate(
                bookingController.completedTodayData.length,
                (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                bookingController.completedTodayData[index]
                                    ['image'],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextWidget(
                                text: bookingController
                                    .completedTodayData[index]['name'],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Row(
                                children: [
                                  CustomTextWidget(
                                    text: "Laundry",
                                    color: AppColors.mediumLightGrey,
                                    fontSize: 12,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomTextWidget(
                                    text: "Atlantic height",
                                    color: AppColors.mediumLightGrey,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomTextWidget(
                              text: "₦5,000",
                              color: AppColors.mediumLightGrey,
                              fontSize: 14,
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            CustomTextWidget(
                              text: "29 Apr 2023",
                              color: AppColors.mediumLightGrey,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const CustomTextWidget(
              text: 'Yesterday',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.mediumGrey,
            ),
            Column(
              children: List.generate(
                bookingController.completedYesterdayData.length,
                (index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                bookingController.completedYesterdayData[index]
                                    ['image'],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextWidget(
                                  text: bookingController
                                      .completedYesterdayData[index]['name']),
                              const SizedBox(
                                height: 4,
                              ),
                              const Row(
                                children: [
                                  CustomTextWidget(
                                    text: "Laundry",
                                    color: AppColors.mediumLightGrey,
                                    fontSize: 12,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CustomTextWidget(
                                    text: "Atlantic height",
                                    color: AppColors.mediumLightGrey,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomTextWidget(
                              text: "₦5,000",
                              color: AppColors.mediumLightGrey,
                              fontSize: 14,
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            CustomTextWidget(
                              text: "29 Apr 2023",
                              color: AppColors.mediumLightGrey,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
