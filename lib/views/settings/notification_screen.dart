import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constant.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
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
        title: Text(
          'Notification',
          style: GoogleFonts.livvic(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Text(
                'Notification Preferences',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Customize how you receive notifications from us. Choose your preferred notification methods below.',
                style: GoogleFonts.livvic(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.4,
                    color: const Color(0xFF828280)),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFEFEFEF)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    notificationTile(
                        groupValue: true,
                        text: 'Push Notifications',
                        subText:
                            'Stay informed about your laundry service status and special offers.'),
                    notificationTile(
                        groupValue: true,
                        text: 'Email Notifications',
                        subText:
                            'Get updates and reminders sent to your email inbox.'),
                    notificationTile(
                        groupValue: false,
                        text: 'SMS Notifications',
                        subText:
                            'Never miss a pickup or delivery notification, even when you\'re on the go.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget notificationTile({
    required bool groupValue,
    required String text,
    required subText,
  }) {
    // return ListTile(
    //   visualDensity: VisualDensity.compact,
    //   contentPadding: const EdgeInsets.only(left: 8, top: 10, right: 15),
    //   leading: ColoredBox(
    //     color: Colors.red,
    //     child: SizedBox(
    //       height: 25,
    //       width: 25,
    //       child: Radio(
    //         value: true,
    //         groupValue: groupValue,
    //         onChanged: (val) {},
    //         activeColor: AppColors.primary,
    //       ),
    //     ),
    //   ),
    //   title: Text(
    //     text,
    //     style: GoogleFonts.livvic(
    //       fontWeight: FontWeight.w500,
    //       fontSize: 14,
    //       color: Colors.black,
    //       letterSpacing: 0.5,
    //     ),
    //   ),
    //   subtitle: Text(
    //     subText,
    //     maxLines: 2,
    //     style: GoogleFonts.livvic(
    //       fontWeight: FontWeight.w400,
    //       fontSize: 14,
    //       color: Colors.grey,
    //       letterSpacing: 0.5,
    //     ),
    //   ),
    // );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Radio(
              value: true,
              groupValue: groupValue,
              onChanged: (val) {},
              activeColor: AppColors.primary,
            ),
            Text(
              text,
              style: GoogleFonts.livvic(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 47.0),
          child: Text(
            subText,
            maxLines: 3,
            style: GoogleFonts.livvic(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              // height: 1.2,
              color: Colors.grey,
              letterSpacing: 0.5,
            ),
          ),
        )
      ],
    );
  }
}
