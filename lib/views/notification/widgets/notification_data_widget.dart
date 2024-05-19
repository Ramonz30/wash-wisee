import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:laundry_app/constants/custom_text_widget.dart';

import '../../../constants/constant.dart';

class NotificationDataWidget extends StatelessWidget {
  const NotificationDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        2,
        (index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                )),
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    // color: Colors.white,
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 40,
                              ),
                              const CustomTextWidget(
                                text: 'Notification Details',
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.mediumGrey
                                          .withOpacity(0.2)),
                                  child: const Icon(
                                    Icons.close,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 20,
                          ),
                          const CustomTextWidget(
                            text: "Important Update: Your Laundry Service",
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const CustomTextWidget(
                            text: "Dear Jimoh,",
                            fontSize: 15,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const CustomTextWidget(
                            maxLine: 20,
                            wordSpacing: 2,
                            text:
                                "We want to inform you that there has been a slight change to your upcoming laundry service. Your pickup time has been adjusted to [new time]. We apologize for any inconvenience this may cause.If the new pickup time works for you, no further action is needed. However, if you have any conflicts or concerns, please let us know as soon as possible so we can make alternate arrangement.",
                            fontSize: 15,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const CustomTextWidget(
                            maxLine: 20,
                            text: "Thank you for your understanding.",
                            fontSize: 15,
                            wordSpacing: 2,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const CustomTextWidget(
                            maxLine: 20,
                            text: "Best regards,\nWashwisee",
                            fontSize: 15,
                            wordSpacing: 2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomTextWidget(
                            text: DateFormat('dd MMM yyyy hh:mm a')
                                .format(DateTime.now()),
                            color: AppColors.mediumLightGrey,
                          ),
                          Container(
                            height: 55,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(top: 40),
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * 0.02),
                            decoration: BoxDecoration(
                                color: AppColors.purpleColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: const CustomTextWidget(
                              text: 'Okay',
                              color: AppColors.whiteColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Container(
              height: 70,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.lightGrey),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(left: 10, right: 14),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.lightGrey),
                    child: const Icon(
                      Icons.notifications_none,
                      size: 22,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomTextWidget(
                        text: "Important Update: Your Laundry Service",
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      CustomTextWidget(
                        text: DateFormat('dd MMM yyyy hh:mm a')
                            .format(DateTime.now()),
                        color: AppColors.mediumLightGrey,
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
