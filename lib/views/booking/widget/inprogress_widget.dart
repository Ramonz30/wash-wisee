import 'package:flutter/material.dart';
import 'package:laundry_app/constants/custom_text_widget.dart';

import '../../../constants/constant.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: CustomTextWidget(
          text: 'Not Data Found',
        ),
      ),
    );
  }
}
