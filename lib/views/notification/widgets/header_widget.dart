import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laundry_app/constants/constant.dart';
import 'package:laundry_app/constants/custom_text_widget.dart';

class NotificationPageHeaderWidget extends StatelessWidget {
  const NotificationPageHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: SvgPicture.asset(
                  SvgIcon.backIcon,
                  height: 28,
                  width: 28,
                ),
              ),
            ),
            const CustomTextWidget(
              text: 'Notification',
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
