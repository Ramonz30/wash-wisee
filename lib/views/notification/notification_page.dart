import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constant.dart';
import 'widgets/notification_data_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
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
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [NotificationDataWidget()],
          ),
        ),
      ),
    );
  }
}
